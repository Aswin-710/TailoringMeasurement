const controller1 = {};

controller1.view1 = (req, res) => {
    req.getConnection((err, conn) => {
        conn.query('SELECT * FROM blouse', (err, blouses) => {
            if (err) {
                res.json(err);
            }
            res.render('blouse_view', {
                data1: blouses
            });
        });
    });
};

controller1.list1 = (req, res) => {
    req.getConnection((err, conn) => {
        conn.query('SELECT * FROM blouse', (err, blouses) => {
            if (err) {
                res.json(err);
            }
            res.render('blouses', {
                data1: blouses
            });
        });
    });
};

controller1.save1 = (req, res) => {
    const data1 = req.body;
    console.log(req.body);
    req.getConnection((err, connection) => {
        const query = connection.query('INSERT INTO blouse set ?', data1, (err, blouse) => {
            console.log(blouse);
            res.redirect('/blouse');  //
        })
    })
};

controller1.edit1 = (req, res) => {
    const {orderId} = req.params;
    req.getConnection((err, conn) => {
        conn.query("SELECT * FROM blouse WHERE orderId = ?", [orderId], (err, rows) => {
            res.render('blouse_edit', {
                data1: rows[0]
            })
        });
    });
};

controller1.update1 = (req, res) => {
    const {orderId} = req.params;
    const newCustomer1 = req.body;
    req.getConnection((err, conn) => {

        conn.query('UPDATE blouse set ? where orderId = ?', [newCustomer1, orderId], (err, rows) => {
            res.redirect('/blouse');
        });
    });
};

controller1.delete1 = (req, res) => {
    const {orderId} = req.params;
    req.getConnection((err, connection) => {
        connection.query('DELETE FROM blouse WHERE orderId = ?', [orderId], (err, rows) => {
            res.redirect('/blouse');
        });
    });
};

module.exports = controller1;

const controller2 = {};

controller2.view2 = (req, res) => {
    req.getConnection((err, conn) => {
        conn.query('SELECT * FROM chudi', (err, chudis) => {
            if (err) {
                res.json(err);
            }
            res.render('chudi_view', {
                data2: chudis
            });
        });
    });
};

controller2.list2 = (req, res) => {
    req.getConnection((err, conn) => {
        conn.query('SELECT * FROM chudi', (err, chudis) => {
            if (err) {
                res.json(err);
            }
            res.render('chudis', {
                data2: chudis
            });
        });
    });
};

controller2.save2 = (req, res) => {
    const data2 = req.body;
    console.log(req.body);
    req.getConnection((err, connection) => {
        const query = connection.query('INSERT INTO chudi set ?', data2, (err, chudi) => {
            console.log(chudi);
            res.redirect('/chudi');  //
        })
    })
};

controller2.edit2 = (req, res) => {
    const {orderId} = req.params;
    req.getConnection((err, conn) => {
        conn.query("SELECT * FROM chudi WHERE orderId = ?", [orderId], (err, rows) => {
            res.render('chudi_edit', {
                data2: rows[0]
            })
        });
    });
};

controller2.update2 = (req, res) => {
    const {orderId} = req.params;
    const newCustomer2 = req.body;
    req.getConnection((err, conn) => {

        conn.query('UPDATE chudi set ? where orderId = ?', [newCustomer2, orderId], (err, rows) => {
            res.redirect('/chudi');
        });
    });
};

controller2.delete2 = (req, res) => {
    const {orderId} = req.params;
    req.getConnection((err, connection) => {
        connection.query('DELETE FROM chudi WHERE orderId = ?', [orderId], (err, rows) => {
            res.redirect('/chudi');
        });
    });
};

module.exports = controller2;

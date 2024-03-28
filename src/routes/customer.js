const router = require('express').Router();

const customerController = require('../controllers/customerController');
const blouseController = require('../controllers/blouseController');
const chudiController = require('../controllers/chudiController');
const authController = require('../controllers/authController');

router.get('/', customerController.renderDashboard);
router.get('/customer', customerController.list);
router.post('/add', customerController.save);
router.get('/update/:id', customerController.edit);
router.post('/update/:id', customerController.update);
router.get('/delete/:id', customerController.delete);

router.get('/blouseview', blouseController.view1);
router.get('/blouse', blouseController.list1);
router.post('/add1', blouseController.save1);
router.get('/update1/:orderId', blouseController.edit1);
router.post('/update1/:orderId', blouseController.update1);
router.get('/delete1/:orderId', blouseController.delete1);

router.get('/chudiview', chudiController.view2);
router.get('/chudi', chudiController.list2);
router.post('/add2', chudiController.save2);
router.get('/update2/:orderId', chudiController.edit2);
router.post('/update2/:orderId', chudiController.update2);
router.get('/delete2/:orderId', chudiController.delete2);

router.get('/login', authController.getLogin);
router.post('/login', authController.postLogin);
router.get('/register', authController.getRegister);
router.post('/register', authController.postRegister);
router.get('/logout', authController.getLogin);

module.exports = router;

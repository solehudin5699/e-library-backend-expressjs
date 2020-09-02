const multer = require("multer")
const path = require("path")
// const _ = require("underscore");


const storage = multer.diskStorage({
  destination: (_, file, cb) => {
    cb(null, "./public/images")
  },
  filename: (_, file, cb) => {
    const nameFormat = `${Date.now()}-${file.originalname}${path.extname(file.originalname)}`;
    cb(null, nameFormat);
  },
})
const limits = {
  fileSize: 1 * 1000 * 1000,
}
const fileFilter = (_, file, cb) => {
  const fileTypes = /jpg|jpeg|gif|png/
  const extName = fileTypes.test(path.extname(file.originalname).toLowerCase())
  if (extName) {
    cb(null, true)
  } else {
    cb("Error: Images Only")
  }
}
const upload = multer({
  storage,
  limits,
  fileFilter,
})

const uploadBridge = {
  singleUpload: (req, res, next) => {
    const singleUpload = upload.single("avatar")
    singleUpload(req, res, (err) => {
      if (err) {
        res.json({
          msg: err,
        })
      } else {
        // console.log(req.body)
        // req.body.gambar_produk = `http://3.81.51.4:8000/images/${req.file.filename}`
        // next()
        try {
          req.body.avatar = `http://localhost:3000/images/${req.file.filename}`
        } catch {
          err
        } finally {
          next()
        }
      }
    })
  }
}

module.exports = uploadBridge;

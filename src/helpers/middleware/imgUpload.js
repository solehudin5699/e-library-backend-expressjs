const multer = require("multer");
const path = require("path");
// const _ = require("underscore");

const storage = multer.diskStorage({
  destination: (_, file, cb) => {
    cb(null, "./public/images");
  },
  filename: (_, file, cb) => {
    const nameFormat = `${Date.now()}-${file.originalname.replace(
      " ",
      "-"
    )}${path.extname(file.originalname)}`;
    cb(null, nameFormat);
  },
});
const limits = {
  fileSize: 3 * 1000 * 1000,
};
const fileFilter = (_, file, cb) => {
  const fileTypes = /jpg|jpeg|gif|png/;
  const extName = fileTypes.test(path.extname(file.originalname).toLowerCase());
  if (extName) {
    cb(null, true);
  } else {
    cb("Error: Images Only");
  }
};
const upload = multer({
  storage,
  limits,
  fileFilter,
});

const uploadBridge = {
  uploadImgAvatar: (req, res, next) => {
    const uploadImgAvatar = upload.single("avatar");
    uploadImgAvatar(req, res, (err) => {
      if (err) {
        res.json({
          msg: err,
        });
      } else {
        try {
          req.body.avatar = `/images/${req.file.filename}`;
        } catch {
          err;
        } finally {
          next();
        }
      }
    });
  },
  uploadImgBooks: (req, res, next) => {
    const uploadImgBooks = upload.single("image");
    uploadImgBooks(req, res, (err) => {
      if (err) {
        res.json({
          msg: err,
        });
      } else {
        try {
          req.body.image = `/images/${req.file.filename}`;
        } catch {
          console.log(err);
        } finally {
          next();
        }
      }
    });
  },
};

module.exports = uploadBridge;

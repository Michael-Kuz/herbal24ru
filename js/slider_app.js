/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, { enumerable: true, get: getter });
/******/ 		}
/******/ 	};
/******/
/******/ 	// define __esModule on exports
/******/ 	__webpack_require__.r = function(exports) {
/******/ 		if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 			Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 		}
/******/ 		Object.defineProperty(exports, '__esModule', { value: true });
/******/ 	};
/******/
/******/ 	// create a fake namespace object
/******/ 	// mode & 1: value is a module id, require it
/******/ 	// mode & 2: merge all properties of value into the ns
/******/ 	// mode & 4: return value when already ns object
/******/ 	// mode & 8|1: behave like require
/******/ 	__webpack_require__.t = function(value, mode) {
/******/ 		if(mode & 1) value = __webpack_require__(value);
/******/ 		if(mode & 8) return value;
/******/ 		if((mode & 4) && typeof value === 'object' && value && value.__esModule) return value;
/******/ 		var ns = Object.create(null);
/******/ 		__webpack_require__.r(ns);
/******/ 		Object.defineProperty(ns, 'default', { enumerable: true, value: value });
/******/ 		if(mode & 2 && typeof value != 'string') for(var key in value) __webpack_require__.d(ns, key, function(key) { return value[key]; }.bind(null, key));
/******/ 		return ns;
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "/dist/";
/******/
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = 0);
/******/ })
/************************************************************************/
/******/ ({

/***/ "./src/js/index.js":
/*!*************************!*\
  !*** ./src/js/index.js ***!
  \*************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


var _slider = __webpack_require__(/*! ./slider */ "./src/js/slider.js");

var _slider2 = _interopRequireDefault(_slider);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

window.onload = function () {
	var sl = new _slider2.default('.wrap-slider');
	sl.startTimer();
};

// const wrap_slider = document.querySelector('.wrap-slider');
// const slider = wrap_slider.querySelector('.slider');
// const controls = wrap_slider.querySelectorAll('input[name="point"]');
// const control_box = wrap_slider.querySelectorAll('.controls, .controls label, .controls label:after');

// function startTimer(){
// return setInterval( tik, 2000 );
// }

// function tik(){
// controls[ind].checked = true;
// ind++;
// if( ind >= controls.length ) ind = 0;
// }
// function stopTimer(e){
// clearInterval(timer_id);
// if(e.toElement.tagName !== 'LABEL')
// e.toElement.addEventListener( 'mouseout', restartTimer );
// }

// function restartTimer(e){
// timer_id = startTimer();
// }

// var ind = 0;
// var timer_id = startTimer();
// slider.addEventListener('mouseover', stopTimer);
// control_box.forEach( (el)=>el.addEventListener('mouseover', stopTimer));

/***/ }),

/***/ "./src/js/slider.js":
/*!**************************!*\
  !*** ./src/js/slider.js ***!
  \**************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
	value: true
});

var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var Slider = function () {
	function Slider(wrap_class_name) {
		_classCallCheck(this, Slider);

		this.wrapper = document.querySelector(wrap_class_name);
		this.slider = this.wrapper.querySelector('.slider');
		this.inputs = this.wrapper.querySelectorAll('input[name="point"]');
		this.controls = this.wrapper.querySelectorAll('.slider, .controls, .controls label');

		this.i = 1;
		this.timer_id;

		var self = this;
	}

	_createClass(Slider, [{
		key: 'startTimer',
		value: function startTimer() {
			var _this = this;

			var i = 0;
			this.timer_id = setInterval(function (inputs) {
				inputs[i].checked = true;
				i++;
				if (i >= inputs.length) i = 0;
			}, 2000, this.inputs);
			self = this;
			this.controls.forEach(function (el) {
				el.addEventListener('mouseover', _this.stopTimer);
				el.timer_id = _this.timer_id;
				el.restartTimer = _this.restartTimer;
			});
			return this.timer_id;
		}
	}, {
		key: 'stopTimer',
		value: function stopTimer(ev) {
			clearInterval(this.timer_id);
			if (ev.toElement.tagName !== 'LABEL') this.addEventListener('mouseout', this.restartTimer);
		}
	}, {
		key: 'restartTimer',
		value: function restartTimer() {
			self.startTimer();
		}
	}]);

	return Slider;
}();

exports.default = Slider;

/***/ }),

/***/ "./src/less/style.less":
/*!*****************************!*\
  !*** ./src/less/style.less ***!
  \*****************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

// extracted by mini-css-extract-plugin

/***/ }),

/***/ 0:
/*!************************************************************************!*\
  !*** multi ./src/js/index.js ./src/js/slider.js ./src/less/style.less ***!
  \************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

__webpack_require__(/*! ./src/js/index.js */"./src/js/index.js");
__webpack_require__(/*! ./src/js/slider.js */"./src/js/slider.js");
module.exports = __webpack_require__(/*! ./src/less/style.less */"./src/less/style.less");


/***/ })

/******/ });
//# sourceMappingURL=app.js.map
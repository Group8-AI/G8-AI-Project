"use strict";
/*
 * ATTENTION: An "eval-source-map" devtool has been used.
 * This devtool is neither made for production nor for readable output files.
 * It uses "eval()" calls to create a separate source file with attached SourceMaps in the browser devtools.
 * If you are trying to read the output file, select a different devtool (https://webpack.js.org/configuration/devtool/)
 * or disable the default devtool with "devtool: false".
 * If you are looking for production-ready output files, see mode: "production" (https://webpack.js.org/configuration/mode/).
 */
self["webpackHotUpdate_N_E"]("app/page",{

/***/ "(app-pages-browser)/./src/app/page.jsx":
/*!**************************!*\
  !*** ./src/app/page.jsx ***!
  \**************************/
/***/ (function(module, __webpack_exports__, __webpack_require__) {

eval(__webpack_require__.ts("__webpack_require__.r(__webpack_exports__);\n/* harmony import */ var react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! react/jsx-dev-runtime */ \"(app-pages-browser)/./node_modules/next/dist/compiled/react/jsx-dev-runtime.js\");\n/* harmony import */ var _components_header__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @/components/header */ \"(app-pages-browser)/./src/components/header.jsx\");\n/* harmony import */ var _components_footer__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! @/components/footer */ \"(app-pages-browser)/./src/components/footer.jsx\");\n/* harmony import */ var _img_Layer_1_png__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! @/img/Layer_1.png */ \"(app-pages-browser)/./src/img/Layer_1.png\");\n/* harmony import */ var _utils_helper__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! @/utils/helper */ \"(app-pages-browser)/./src/utils/helper.js\");\n/* harmony import */ var _components_product_component__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! @/components/product-component */ \"(app-pages-browser)/./src/components/product-component.jsx\");\n/* harmony import */ var _utils_api_caller__WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! @/utils/api-caller */ \"(app-pages-browser)/./src/utils/api-caller.js\");\n/* harmony import */ var react__WEBPACK_IMPORTED_MODULE_7__ = __webpack_require__(/*! react */ \"(app-pages-browser)/./node_modules/next/dist/compiled/react/index.js\");\n/* harmony import */ var react__WEBPACK_IMPORTED_MODULE_7___default = /*#__PURE__*/__webpack_require__.n(react__WEBPACK_IMPORTED_MODULE_7__);\n/* harmony import */ var next_navigation__WEBPACK_IMPORTED_MODULE_8__ = __webpack_require__(/*! next/navigation */ \"(app-pages-browser)/./node_modules/next/dist/api/navigation.js\");\n/* harmony import */ var next_image__WEBPACK_IMPORTED_MODULE_9__ = __webpack_require__(/*! next/image */ \"(app-pages-browser)/./node_modules/next/dist/api/image.js\");\n/* __next_internal_client_entry_do_not_use__ default auto */ \nvar _s = $RefreshSig$();\n\n\n\n\n\n\n\n\n\nconst pageSize = 9; // Set page size to 9\nconst ProductsPage = ()=>{\n    _s();\n    const [bestSellers, setBestSellers] = (0,react__WEBPACK_IMPORTED_MODULE_7__.useState)([]);\n    const [products, setProducts] = (0,react__WEBPACK_IMPORTED_MODULE_7__.useState)([]);\n    const searchParams = (0,next_navigation__WEBPACK_IMPORTED_MODULE_8__.useSearchParams)();\n    const pathname = (0,next_navigation__WEBPACK_IMPORTED_MODULE_8__.usePathname)();\n    const [pageCount, setPageCount] = (0,react__WEBPACK_IMPORTED_MODULE_7__.useState)(1);\n    const router = (0,next_navigation__WEBPACK_IMPORTED_MODULE_8__.useRouter)();\n    const page = searchParams.get(\"page\") !== null ? +searchParams.get(\"page\") : 1;\n    // useEffect(() => {\n    //   fetchData();\n    //   console.log(getUser())\n    // }, [pathname, searchParams]);\n    console.log(_img_Layer_1_png__WEBPACK_IMPORTED_MODULE_3__[\"default\"]);\n    return /*#__PURE__*/ (0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.Fragment, {\n        children: /*#__PURE__*/ (0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(\"div\", {\n            className: \" text-[#015109]\",\n            children: [\n                /*#__PURE__*/ (0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(_components_header__WEBPACK_IMPORTED_MODULE_1__[\"default\"], {}, void 0, false, {\n                    fileName: \"D:\\\\TI001\\\\AI Project\\\\G8-AI-Project\\\\src\\\\app\\\\page.jsx\",\n                    lineNumber: 35,\n                    columnNumber: 7\n                }, undefined),\n                /*#__PURE__*/ (0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(\"div\", {\n                    className: \"container mx-auto mt-10\",\n                    style: {\n                        padding: \"100px\",\n                        display: \"flex\"\n                    },\n                    children: [\n                        /*#__PURE__*/ (0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(\"div\", {\n                            className: \"left\",\n                            style: {\n                                height: \"70vh\",\n                                width: \"50vw\"\n                            },\n                            children: /*#__PURE__*/ (0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(\"div\", {\n                                className: \"img\",\n                                children: /*#__PURE__*/ (0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(next_image__WEBPACK_IMPORTED_MODULE_9__[\"default\"], {\n                                    src: _img_Layer_1_png__WEBPACK_IMPORTED_MODULE_3__[\"default\"],\n                                    width: \"100%\",\n                                    height: \"auto\",\n                                    alt: \"Layer 1\"\n                                }, void 0, false, {\n                                    fileName: \"D:\\\\TI001\\\\AI Project\\\\G8-AI-Project\\\\src\\\\app\\\\page.jsx\",\n                                    lineNumber: 40,\n                                    columnNumber: 13\n                                }, undefined)\n                            }, void 0, false, {\n                                fileName: \"D:\\\\TI001\\\\AI Project\\\\G8-AI-Project\\\\src\\\\app\\\\page.jsx\",\n                                lineNumber: 39,\n                                columnNumber: 11\n                            }, undefined)\n                        }, void 0, false, {\n                            fileName: \"D:\\\\TI001\\\\AI Project\\\\G8-AI-Project\\\\src\\\\app\\\\page.jsx\",\n                            lineNumber: 38,\n                            columnNumber: 9\n                        }, undefined),\n                        /*#__PURE__*/ (0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(\"div\", {\n                            className: \"right\",\n                            children: [\n                                /*#__PURE__*/ (0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(\"div\", {\n                                    style: {\n                                        fontWeigt: \"500\",\n                                        fontSize: \"30px\",\n                                        color: \"#458A55\"\n                                    },\n                                    children: \"Handwritten Signature Detection\"\n                                }, void 0, false, {\n                                    fileName: \"D:\\\\TI001\\\\AI Project\\\\G8-AI-Project\\\\src\\\\app\\\\page.jsx\",\n                                    lineNumber: 44,\n                                    columnNumber: 11\n                                }, undefined),\n                                /*#__PURE__*/ (0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(\"div\", {\n                                    className: \"\",\n                                    style: {\n                                        fontSize: \"20px\",\n                                        color: \"#000000\"\n                                    },\n                                    children: \"Deep Learning Based Handwritten Signature Detection Sign-Check  setup your own Handwritten Signature Detection solution. The models are trained and optimized for text on natural scene and scanned documents.\"\n                                }, void 0, false, {\n                                    fileName: \"D:\\\\TI001\\\\AI Project\\\\G8-AI-Project\\\\src\\\\app\\\\page.jsx\",\n                                    lineNumber: 47,\n                                    columnNumber: 11\n                                }, undefined),\n                                /*#__PURE__*/ (0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(\"div\", {\n                                    className: \"button\",\n                                    children: /*#__PURE__*/ (0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(\"button\", {\n                                        style: {\n                                            border: \"2px solid #458A55\",\n                                            borderRadius: \"20px\",\n                                            padding: \"5px 15px\",\n                                            background: \"#458A55\",\n                                            color: \"#FFFFFF\",\n                                            fontSize: \"16px\",\n                                            cursor: \"pointer\"\n                                        },\n                                        children: \" Get started\"\n                                    }, void 0, false, {\n                                        fileName: \"D:\\\\TI001\\\\AI Project\\\\G8-AI-Project\\\\src\\\\app\\\\page.jsx\",\n                                        lineNumber: 52,\n                                        columnNumber: 13\n                                    }, undefined)\n                                }, void 0, false, {\n                                    fileName: \"D:\\\\TI001\\\\AI Project\\\\G8-AI-Project\\\\src\\\\app\\\\page.jsx\",\n                                    lineNumber: 51,\n                                    columnNumber: 11\n                                }, undefined)\n                            ]\n                        }, void 0, true, {\n                            fileName: \"D:\\\\TI001\\\\AI Project\\\\G8-AI-Project\\\\src\\\\app\\\\page.jsx\",\n                            lineNumber: 43,\n                            columnNumber: 9\n                        }, undefined)\n                    ]\n                }, void 0, true, {\n                    fileName: \"D:\\\\TI001\\\\AI Project\\\\G8-AI-Project\\\\src\\\\app\\\\page.jsx\",\n                    lineNumber: 37,\n                    columnNumber: 7\n                }, undefined),\n                /*#__PURE__*/ (0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(_components_footer__WEBPACK_IMPORTED_MODULE_2__[\"default\"], {}, void 0, false, {\n                    fileName: \"D:\\\\TI001\\\\AI Project\\\\G8-AI-Project\\\\src\\\\app\\\\page.jsx\",\n                    lineNumber: 59,\n                    columnNumber: 7\n                }, undefined)\n            ]\n        }, void 0, true, {\n            fileName: \"D:\\\\TI001\\\\AI Project\\\\G8-AI-Project\\\\src\\\\app\\\\page.jsx\",\n            lineNumber: 34,\n            columnNumber: 5\n        }, undefined)\n    }, void 0, false);\n};\n_s(ProductsPage, \"V9sKep45mx0M0hwKhmN5sekyOOg=\", false, function() {\n    return [\n        next_navigation__WEBPACK_IMPORTED_MODULE_8__.useSearchParams,\n        next_navigation__WEBPACK_IMPORTED_MODULE_8__.usePathname,\n        next_navigation__WEBPACK_IMPORTED_MODULE_8__.useRouter\n    ];\n});\n_c = ProductsPage;\n/* harmony default export */ __webpack_exports__[\"default\"] = (ProductsPage);\nvar _c;\n$RefreshReg$(_c, \"ProductsPage\");\n\n\n;\n    // Wrapped in an IIFE to avoid polluting the global scope\n    ;\n    (function () {\n        var _a, _b;\n        // Legacy CSS implementations will `eval` browser code in a Node.js context\n        // to extract CSS. For backwards compatibility, we need to check we're in a\n        // browser context before continuing.\n        if (typeof self !== 'undefined' &&\n            // AMP / No-JS mode does not inject these helpers:\n            '$RefreshHelpers$' in self) {\n            // @ts-ignore __webpack_module__ is global\n            var currentExports = module.exports;\n            // @ts-ignore __webpack_module__ is global\n            var prevSignature = (_b = (_a = module.hot.data) === null || _a === void 0 ? void 0 : _a.prevSignature) !== null && _b !== void 0 ? _b : null;\n            // This cannot happen in MainTemplate because the exports mismatch between\n            // templating and execution.\n            self.$RefreshHelpers$.registerExportsForReactRefresh(currentExports, module.id);\n            // A module can be accepted automatically based on its exports, e.g. when\n            // it is a Refresh Boundary.\n            if (self.$RefreshHelpers$.isReactRefreshBoundary(currentExports)) {\n                // Save the previous exports signature on update so we can compare the boundary\n                // signatures. We avoid saving exports themselves since it causes memory leaks (https://github.com/vercel/next.js/pull/53797)\n                module.hot.dispose(function (data) {\n                    data.prevSignature =\n                        self.$RefreshHelpers$.getRefreshBoundarySignature(currentExports);\n                });\n                // Unconditionally accept an update to this module, we'll check if it's\n                // still a Refresh Boundary later.\n                // @ts-ignore importMeta is replaced in the loader\n                module.hot.accept();\n                // This field is set when the previous version of this module was a\n                // Refresh Boundary, letting us know we need to check for invalidation or\n                // enqueue an update.\n                if (prevSignature !== null) {\n                    // A boundary can become ineligible if its exports are incompatible\n                    // with the previous exports.\n                    //\n                    // For example, if you add/remove/change exports, we'll want to\n                    // re-execute the importing modules, and force those components to\n                    // re-render. Similarly, if you convert a class component to a\n                    // function, we want to invalidate the boundary.\n                    if (self.$RefreshHelpers$.shouldInvalidateReactRefreshBoundary(prevSignature, self.$RefreshHelpers$.getRefreshBoundarySignature(currentExports))) {\n                        module.hot.invalidate();\n                    }\n                    else {\n                        self.$RefreshHelpers$.scheduleUpdate();\n                    }\n                }\n            }\n            else {\n                // Since we just executed the code for the module, it's possible that the\n                // new exports made it ineligible for being a boundary.\n                // We only care about the case when we were _previously_ a boundary,\n                // because we already accepted this update (accidental side effect).\n                var isNoLongerABoundary = prevSignature !== null;\n                if (isNoLongerABoundary) {\n                    module.hot.invalidate();\n                }\n            }\n        }\n    })();\n//# sourceURL=[module]\n//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiKGFwcC1wYWdlcy1icm93c2VyKS8uL3NyYy9hcHAvcGFnZS5qc3giLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7Ozs7QUFDeUM7QUFDQTtBQUNKO0FBQ2U7QUFDVTtBQUNqQjtBQUNEO0FBQzhCO0FBQzNDO0FBQy9CLE1BQU1hLFdBQVcsR0FBSSxxQkFBcUI7QUFFMUMsTUFBTUMsZUFBZTs7SUFDbkIsTUFBTSxDQUFDQyxhQUFhQyxlQUFlLEdBQUdSLCtDQUFRQSxDQUFDLEVBQUU7SUFDakQsTUFBTSxDQUFDUyxVQUFVQyxZQUFZLEdBQUdWLCtDQUFRQSxDQUFDLEVBQUU7SUFDM0MsTUFBTVcsZUFBZVYsZ0VBQWVBO0lBQ3BDLE1BQU1XLFdBQVdWLDREQUFXQTtJQUM1QixNQUFNLENBQUNXLFdBQVdDLGFBQWEsR0FBR2QsK0NBQVFBLENBQUM7SUFDM0MsTUFBTWUsU0FBU1osMERBQVNBO0lBSXhCLE1BQU1hLE9BQU9MLGFBQWFNLEdBQUcsQ0FBQyxZQUFZLE9BQU8sQ0FBQ04sYUFBYU0sR0FBRyxDQUFDLFVBQVU7SUFHN0Usb0JBQW9CO0lBQ3BCLGlCQUFpQjtJQUNqQiwyQkFBMkI7SUFDM0IsZ0NBQWdDO0lBRWhDQyxRQUFRQyxHQUFHLENBQUN6Qix3REFBSUE7SUFDaEIscUJBQ0U7a0JBQ0EsNEVBQUMwQjtZQUFJQyxXQUFVOzs4QkFDYiw4REFBQzdCLDBEQUFNQTs7Ozs7OEJBRVAsOERBQUM0QjtvQkFBSUMsV0FBVTtvQkFBMEJDLE9BQU87d0JBQUNDLFNBQVE7d0JBQVNDLFNBQVE7b0JBQU07O3NDQUM5RSw4REFBQ0o7NEJBQUlDLFdBQVU7NEJBQU9DLE9BQU87Z0NBQUNHLFFBQU87Z0NBQU9DLE9BQU07NEJBQU07c0NBQ3RELDRFQUFDTjtnQ0FBSUMsV0FBVTswQ0FDYiw0RUFBQ2pCLGtEQUFLQTtvQ0FBQ3VCLEtBQUtqQyx3REFBSUE7b0NBQUVnQyxPQUFNO29DQUFPRCxRQUFPO29DQUFPRyxLQUFJOzs7Ozs7Ozs7Ozs7Ozs7O3NDQUdyRCw4REFBQ1I7NEJBQUlDLFdBQVU7OzhDQUNiLDhEQUFDRDtvQ0FBSUUsT0FBTzt3Q0FBQ08sV0FBVTt3Q0FBT0MsVUFBUzt3Q0FBT0MsT0FBTTtvQ0FBUzs4Q0FBRzs7Ozs7OzhDQUdoRSw4REFBQ1g7b0NBQUlDLFdBQVU7b0NBQUdDLE9BQU87d0NBQUNRLFVBQVM7d0NBQU9DLE9BQU07b0NBQVM7OENBQUc7Ozs7Ozs4Q0FJNUQsOERBQUNYO29DQUFJQyxXQUFVOzhDQUNiLDRFQUFDVzt3Q0FBT1YsT0FBTzs0Q0FBQ1csUUFBUTs0Q0FBb0JDLGNBQWM7NENBQU9YLFNBQVM7NENBQVdZLFlBQVk7NENBQVVKLE9BQU87NENBQVVELFVBQVU7NENBQU9NLFFBQVE7d0NBQVM7a0RBQUc7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OzhCQU92Syw4REFBQzNDLDBEQUFNQTs7Ozs7Ozs7Ozs7O0FBSWI7R0FsRE1hOztRQUdpQkwsNERBQWVBO1FBQ25CQyx3REFBV0E7UUFFYkMsc0RBQVNBOzs7S0FOcEJHO0FBb0ROLCtEQUFlQSxZQUFZQSxFQUFDIiwic291cmNlcyI6WyJ3ZWJwYWNrOi8vX05fRS8uL3NyYy9hcHAvcGFnZS5qc3g/ZDQ2NyJdLCJzb3VyY2VzQ29udGVudCI6WyJcInVzZSBjbGllbnRcIjtcclxuaW1wb3J0IEhlYWRlciBmcm9tIFwiQC9jb21wb25lbnRzL2hlYWRlclwiO1xyXG5pbXBvcnQgRm9vdGVyIGZyb20gXCJAL2NvbXBvbmVudHMvZm9vdGVyXCI7XHJcbmltcG9ydCBpbWcxIGZyb20gXCJAL2ltZy9MYXllcl8xLnBuZ1wiO1xyXG5pbXBvcnQgeyBnZXRVc2VyLCBpc0xvZ2luZWQgfSBmcm9tIFwiQC91dGlscy9oZWxwZXJcIjtcclxuaW1wb3J0IFByb2R1Y3RDb21wb25lbnQgZnJvbSBcIkAvY29tcG9uZW50cy9wcm9kdWN0LWNvbXBvbmVudFwiO1xyXG5pbXBvcnQgeyBjYWxsQVBJIH0gZnJvbSBcIkAvdXRpbHMvYXBpLWNhbGxlclwiO1xyXG5pbXBvcnQgeyB1c2VFZmZlY3QsIHVzZVN0YXRlIH0gZnJvbSBcInJlYWN0XCI7XHJcbmltcG9ydCB7IHVzZVNlYXJjaFBhcmFtcywgdXNlUGF0aG5hbWUsIHVzZVJvdXRlciB9IGZyb20gXCJuZXh0L25hdmlnYXRpb25cIjtcclxuaW1wb3J0IEltYWdlIGZyb20gJ25leHQvaW1hZ2UnO1xyXG5jb25zdCBwYWdlU2l6ZSA9IDk7ICAvLyBTZXQgcGFnZSBzaXplIHRvIDlcclxuXHJcbmNvbnN0IFByb2R1Y3RzUGFnZSA9ICgpID0+IHtcclxuICBjb25zdCBbYmVzdFNlbGxlcnMsIHNldEJlc3RTZWxsZXJzXSA9IHVzZVN0YXRlKFtdKTtcclxuICBjb25zdCBbcHJvZHVjdHMsIHNldFByb2R1Y3RzXSA9IHVzZVN0YXRlKFtdKTtcclxuICBjb25zdCBzZWFyY2hQYXJhbXMgPSB1c2VTZWFyY2hQYXJhbXMoKTtcclxuICBjb25zdCBwYXRobmFtZSA9IHVzZVBhdGhuYW1lKCk7XHJcbiAgY29uc3QgW3BhZ2VDb3VudCwgc2V0UGFnZUNvdW50XSA9IHVzZVN0YXRlKDEpO1xyXG4gIGNvbnN0IHJvdXRlciA9IHVzZVJvdXRlcigpO1xyXG4gIFxyXG4gIFxyXG4gIFxyXG4gIGNvbnN0IHBhZ2UgPSBzZWFyY2hQYXJhbXMuZ2V0KFwicGFnZVwiKSAhPT0gbnVsbCA/ICtzZWFyY2hQYXJhbXMuZ2V0KFwicGFnZVwiKSA6IDE7XHJcblxyXG4gIFxyXG4gIC8vIHVzZUVmZmVjdCgoKSA9PiB7XHJcbiAgLy8gICBmZXRjaERhdGEoKTtcclxuICAvLyAgIGNvbnNvbGUubG9nKGdldFVzZXIoKSlcclxuICAvLyB9LCBbcGF0aG5hbWUsIHNlYXJjaFBhcmFtc10pO1xyXG5cclxuICBjb25zb2xlLmxvZyhpbWcxKVxyXG4gIHJldHVybiAoXHJcbiAgICA8PlxyXG4gICAgPGRpdiBjbGFzc05hbWU9XCIgdGV4dC1bIzAxNTEwOV1cIj5cclxuICAgICAgPEhlYWRlciAvPlxyXG4gICAgICBcclxuICAgICAgPGRpdiBjbGFzc05hbWU9XCJjb250YWluZXIgbXgtYXV0byBtdC0xMFwiIHN0eWxlPXt7cGFkZGluZzonMTAwcHgnLCBkaXNwbGF5OidmbGV4J319PlxyXG4gICAgICAgIDxkaXYgY2xhc3NOYW1lPVwibGVmdFwiIHN0eWxlPXt7aGVpZ2h0Oic3MHZoJyx3aWR0aDonNTB2dyd9fT5cclxuICAgICAgICAgIDxkaXYgY2xhc3NOYW1lPVwiaW1nXCI+XHJcbiAgICAgICAgICAgIDxJbWFnZSBzcmM9e2ltZzF9IHdpZHRoPVwiMTAwJVwiIGhlaWdodD1cImF1dG9cIiBhbHQ9XCJMYXllciAxXCIgLz5cclxuICAgICAgICAgIDwvZGl2PlxyXG4gICAgICAgIDwvZGl2PlxyXG4gICAgICAgIDxkaXYgY2xhc3NOYW1lPVwicmlnaHRcIj5cclxuICAgICAgICAgIDxkaXYgc3R5bGU9e3tmb250V2VpZ3Q6JzUwMCcsIGZvbnRTaXplOiczMHB4Jyxjb2xvcjonIzQ1OEE1NSd9fT5cclxuICAgICAgICAgIEhhbmR3cml0dGVuIFNpZ25hdHVyZSBEZXRlY3Rpb25cclxuICAgICAgICAgIDwvZGl2PlxyXG4gICAgICAgICAgPGRpdiBjbGFzc05hbWU9XCJcIiBzdHlsZT17e2ZvbnRTaXplOicyMHB4Jyxjb2xvcjonIzAwMDAwMCd9fT5cclxuICAgICAgICAgIERlZXAgTGVhcm5pbmcgQmFzZWQgSGFuZHdyaXR0ZW4gU2lnbmF0dXJlIERldGVjdGlvblxyXG4gICAgICAgICAgU2lnbi1DaGVjayAgc2V0dXAgeW91ciBvd24gSGFuZHdyaXR0ZW4gU2lnbmF0dXJlIERldGVjdGlvbiBzb2x1dGlvbi4gVGhlIG1vZGVscyBhcmUgdHJhaW5lZCBhbmQgb3B0aW1pemVkIGZvciB0ZXh0IG9uIG5hdHVyYWwgc2NlbmUgYW5kIHNjYW5uZWQgZG9jdW1lbnRzLlxyXG4gICAgICAgICAgPC9kaXY+XHJcbiAgICAgICAgICA8ZGl2IGNsYXNzTmFtZT1cImJ1dHRvblwiPlxyXG4gICAgICAgICAgICA8YnV0dG9uIHN0eWxlPXt7Ym9yZGVyOiAnMnB4IHNvbGlkICM0NThBNTUnLGJvcmRlclJhZGl1czogJzIwcHgnLHBhZGRpbmc6ICc1cHggMTVweCcsYmFja2dyb3VuZDogJyM0NThBNTUnLGNvbG9yOiAnI0ZGRkZGRicsZm9udFNpemU6ICcxNnB4JyxjdXJzb3I6ICdwb2ludGVyJ319PiBHZXQgc3RhcnRlZDwvYnV0dG9uPlxyXG4gICAgICAgICAgPC9kaXY+XHJcbiAgICAgICAgPC9kaXY+XHJcblxyXG4gICAgICAgIFxyXG4gICAgICAgIFxyXG4gICAgICA8L2Rpdj5cclxuICAgICAgPEZvb3Rlci8+XHJcbiAgICA8L2Rpdj5cclxuICAgIDwvPlxyXG4gICk7XHJcbn07XHJcblxyXG5leHBvcnQgZGVmYXVsdCBQcm9kdWN0c1BhZ2U7XHJcbiJdLCJuYW1lcyI6WyJIZWFkZXIiLCJGb290ZXIiLCJpbWcxIiwiZ2V0VXNlciIsImlzTG9naW5lZCIsIlByb2R1Y3RDb21wb25lbnQiLCJjYWxsQVBJIiwidXNlRWZmZWN0IiwidXNlU3RhdGUiLCJ1c2VTZWFyY2hQYXJhbXMiLCJ1c2VQYXRobmFtZSIsInVzZVJvdXRlciIsIkltYWdlIiwicGFnZVNpemUiLCJQcm9kdWN0c1BhZ2UiLCJiZXN0U2VsbGVycyIsInNldEJlc3RTZWxsZXJzIiwicHJvZHVjdHMiLCJzZXRQcm9kdWN0cyIsInNlYXJjaFBhcmFtcyIsInBhdGhuYW1lIiwicGFnZUNvdW50Iiwic2V0UGFnZUNvdW50Iiwicm91dGVyIiwicGFnZSIsImdldCIsImNvbnNvbGUiLCJsb2ciLCJkaXYiLCJjbGFzc05hbWUiLCJzdHlsZSIsInBhZGRpbmciLCJkaXNwbGF5IiwiaGVpZ2h0Iiwid2lkdGgiLCJzcmMiLCJhbHQiLCJmb250V2VpZ3QiLCJmb250U2l6ZSIsImNvbG9yIiwiYnV0dG9uIiwiYm9yZGVyIiwiYm9yZGVyUmFkaXVzIiwiYmFja2dyb3VuZCIsImN1cnNvciJdLCJzb3VyY2VSb290IjoiIn0=\n//# sourceURL=webpack-internal:///(app-pages-browser)/./src/app/page.jsx\n"));

/***/ })

});
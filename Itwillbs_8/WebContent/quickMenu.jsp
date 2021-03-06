<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!-- <html> -->
<!-- <head> -->
<style>
#blk_scroll_wings {
	z-index: 5555 !important;
}

#right_bn_wrap {
	display: block;
	z-index: 5555;
	position: fixed;
	top: 0;
	bottom: 0;
	right: 0;
	background-color: #fff;
	width: 0;
	border-left: 1px solid #dedede;
}

.cboth {
	clear: both;
	*zoom: 1;
}

.sm_right_bn {
	position: absolute;
	margin-top: 320px;
	left: -36px;
}

.right_quick_close {
	cursor: pointer;
	padding: 0px;
	width: 34px;
	height: 35px;
	border: 1px solid #222;
	background-color: #222;
}

.sm_btn {
	background-color: #fff;
	border: 1px solid #e9e9e9;
	border-top: 0px;
	position: relative;
	width: 34px;
	height: 35px;
}

.sm_btn img {
	opacity: 0.3;
	-moz-transition: all 0.3s linear;
	-webkit-transition: all 0.3s linear;
	-o-transition: all 0.3s linear;
	-ms-transition: all 0.3s linear;
	transition: all 0.3s linear;
}

.sm_btn:hover img {
	opacity: 1;
}

.sm_btn .sm_btn_text {
	font-size: 11px;
	letter-spacing: -0.5px;
	text-align: right;
	color: #222;
	position: absolute;
	left: -60px;
	top: 0px;
	line-height: 35px;
	opacity: 0;
	width: 60px;
	-moz-transition: all 0.3s linear;
	-webkit-transition: all 0.3s linear;
	-o-transition: all 0.3s linear;
	-ms-transition: all 0.3s linear;
	transition: all 0.3s linear;
}

.sm_btn:hover .sm_btn_text {
	left: -68px;
	opacity: 1;
}

.quick_comm_area {
	width: 164px;
	margin: 20px auto;
	padding-bottom: 28px;
}

.quick_comm_area ul li {
	list-style: none;
	float: left;
	margin-bottom: 5px;
}

.quick_comm_area ul li:last-child {
	float: right !important;
}
.quick_comm_area li{
	width: 70px;
}

.quick_comm_area a {
	width: 78px;
	height: 23px;
	border: 1px solid #dedede;
	display: block;
	float: left;
	font-size: 11px;
	color: #777;
	text-align: center;
	line-height: 23px;
}

.quick_comm_area a:hover {
	border: 1px solid #222;
	color: #222;
}

.quick_cs {
	text-align: left;
	width: 164px;
	margin: 0 auto;
	padding-top: 28px;
	border-bottom: 1px solid #e9e9e9;
	padding-bottom: 28px;
}

.quick_bank {
	text-align: left;
	width: 164px;
	margin: 0 auto;
	padding-top: 28px;
}

.quick_ttitle {
	color: #222222;
	font-size: 12px;
}

.quick_bt {
	width: 12px;
	height: 2px;
	background-color: #222;
	margin: 8px 0px;
}

.quick_cs_numb {
	font-weight: 700;
	font-size: 18px;
	line-height: 18px;
	color: #222;
}

.quick_cs_txt {
	font-size: 11px;
	color: #888;
	line-height: 15px;
	padding-top: 10px;
}

.quick_bank_txt {
	font-size: 12px;
	color: #888;
	line-height: 15px;
	padding-top: 2px;
}

.quick_sns {
	width: 164px;
	margin: 28px auto;
}

.quick_sns img {
	opacity: 0.15;
	-moz-transition: all 0.3s linear;
	-webkit-transition: all 0.3s linear;
	-o-transition: all 0.3s linear;
	-ms-transition: all 0.3s linear;
	transition: all 0.3s linear;
}

.quick_sns img:hover {
	opacity: 1;
}

.quick_sns ul li:first-child {
	padding-left: 0px;
}

.quick_sns ul li {
	float: left;
	padding-left: 7px;
	list-style-type: none;
}

.quick_area {
	width: 60px;
	margin: 0 auto;
	text-align: center;
	border: 0;
}

.quick_area ul li a img {
	border: 1px solid #fff;
}

.quick_area ul li a:hover img {
	border: 1px solid #ececec;
}

.swiper_quick .swiper-slide a {
	display: block;
	padding-bottom: 20px;
}

.swiper_quick {
	width: 164px;
	margin: 10px auto 0px !important;
}

.swiper_quick .swiper-pagination-bullets {
	bottom: 0px !important;
}

.swiper_quick .swiper-pagination-bullet {
	width: 12px;
	height: 3px;
	display: inline-block;
	border-radius: 0%;
	background: #000;
	opacity: .2;
}

.swiper_quick .swiper-pagination-bullet-active {
	opacity: 1;
	background: #000;
}

@media screen and (max-width:1280px) {
	#quickMenu {
		display: none;
	}
}

.swiper-container {
	height:220px;
	margin: 0 auto;
	position: relative;
	overflow: hidden;
	list-style: none;
	padding: 0;
	z-index: 1
}

.swiper-container-no-flexbox .swiper-slide {
	float: left
}

.swiper-container-vertical>.swiper-wrapper {
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	-webkit-flex-direction: column;
	-ms-flex-direction: column;
	flex-direction: column
}

.swiper-wrapper {
	position: relative;
	width: 100%;
	height: 100%;
	z-index: 1;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-transition-property: -webkit-transform;
	transition-property: -webkit-transform;
	-o-transition-property: transform;
	transition-property: transform;
	transition-property: transform, -webkit-transform;
	-webkit-box-sizing: content-box;
	box-sizing: content-box
}

.swiper-container-android .swiper-slide, .swiper-wrapper {
	-webkit-transform: translate3d(0, 0, 0);
	transform: translate3d(0, 0, 0);
}

.swiper-container-multirow>.swiper-wrapper {
	-webkit-flex-wrap: wrap;
	-ms-flex-wrap: wrap;
	flex-wrap: wrap
}

.swiper-container-free-mode>.swiper-wrapper {
	-webkit-transition-timing-function: ease-out;
	-o-transition-timing-function: ease-out;
	transition-timing-function: ease-out;
	margin: 0 auto
}

.swiper-slide {
	-webkit-flex-shrink: 0;
	-ms-flex-negative: 0;
	flex-shrink: 0;
	width: 100%;
	height: 100%;
	position: relative;
	-webkit-transition-property: -webkit-transform;
	transition-property: -webkit-transform;
	-o-transition-property: transform;
	transition-property: transform;
	transition-property: transform, -webkit-transform
}

.swiper-slide-invisible-blank {
	visibility: hidden
}

.swiper-container-autoheight, .swiper-container-autoheight .swiper-slide
	{
	height: auto
}

.swiper-container-autoheight .swiper-wrapper {
	-webkit-box-align: start;
	-webkit-align-items: flex-start;
	-ms-flex-align: start;
	align-items: flex-start;
	-webkit-transition-property: height, -webkit-transform;
	transition-property: height, -webkit-transform;
	-o-transition-property: transform, height;
	transition-property: transform, height;
	transition-property: transform, height, -webkit-transform
}

.swiper-container-3d {
	-webkit-perspective: 1200px;
	perspective: 1200px
}

.swiper-container-3d .swiper-cube-shadow, .swiper-container-3d .swiper-slide,
	.swiper-container-3d .swiper-slide-shadow-bottom, .swiper-container-3d .swiper-slide-shadow-left,
	.swiper-container-3d .swiper-slide-shadow-right, .swiper-container-3d .swiper-slide-shadow-top,
	.swiper-container-3d .swiper-wrapper {
	-webkit-transform-style: preserve-3d;
	transform-style: preserve-3d
}

.swiper-container-3d .swiper-slide-shadow-bottom, .swiper-container-3d .swiper-slide-shadow-left,
	.swiper-container-3d .swiper-slide-shadow-right, .swiper-container-3d .swiper-slide-shadow-top
	{
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	pointer-events: none;
	z-index: 10
}

.swiper-container-3d .swiper-slide-shadow-left {
	background-image: -webkit-gradient(linear, right top, left top, from(rgba(0, 0, 0, .5)),
		to(rgba(0, 0, 0, 0)));
	background-image: -webkit-linear-gradient(right, rgba(0, 0, 0, .5),
		rgba(0, 0, 0, 0));
	background-image: -o-linear-gradient(right, rgba(0, 0, 0, .5),
		rgba(0, 0, 0, 0));
	background-image: linear-gradient(to left, rgba(0, 0, 0, .5),
		rgba(0, 0, 0, 0))
}

.swiper-container-3d .swiper-slide-shadow-right {
	background-image: -webkit-gradient(linear, left top, right top, from(rgba(0, 0, 0, .5)),
		to(rgba(0, 0, 0, 0)));
	background-image: -webkit-linear-gradient(left, rgba(0, 0, 0, .5),
		rgba(0, 0, 0, 0));
	background-image: -o-linear-gradient(left, rgba(0, 0, 0, .5),
		rgba(0, 0, 0, 0));
	background-image: linear-gradient(to right, rgba(0, 0, 0, .5),
		rgba(0, 0, 0, 0))
}

.swiper-container-3d .swiper-slide-shadow-top {
	background-image: -webkit-gradient(linear, left bottom, left top, from(rgba(0, 0, 0, .5)),
		to(rgba(0, 0, 0, 0)));
	background-image: -webkit-linear-gradient(bottom, rgba(0, 0, 0, .5),
		rgba(0, 0, 0, 0));
	background-image: -o-linear-gradient(bottom, rgba(0, 0, 0, .5),
		rgba(0, 0, 0, 0));
	background-image: linear-gradient(to top, rgba(0, 0, 0, .5),
		rgba(0, 0, 0, 0))
}

.swiper-container-3d .swiper-slide-shadow-bottom {
	background-image: -webkit-gradient(linear, left top, left bottom, from(rgba(0, 0, 0, .5)),
		to(rgba(0, 0, 0, 0)));
	background-image: -webkit-linear-gradient(top, rgba(0, 0, 0, .5),
		rgba(0, 0, 0, 0));
	background-image: -o-linear-gradient(top, rgba(0, 0, 0, .5),
		rgba(0, 0, 0, 0));
	background-image: linear-gradient(to bottom, rgba(0, 0, 0, .5),
		rgba(0, 0, 0, 0))
}

.swiper-container-wp8-horizontal, .swiper-container-wp8-horizontal>.swiper-wrapper
	{
	-ms-touch-action: pan-y;
	touch-action: pan-y
}

.swiper-container-wp8-vertical, .swiper-container-wp8-vertical>.swiper-wrapper
	{
	-ms-touch-action: pan-x;
	touch-action: pan-x
}

.swiper-button-next, .swiper-button-prev {
	position: absolute;
	top: 50%;
	width: 27px;
	height: 44px;
	margin-top: -22px;
	z-index: 10;
	cursor: pointer;
	background-size: 27px 44px;
	background-position: center;
	background-repeat: no-repeat
}

.swiper-button-next.swiper-button-disabled, .swiper-button-prev.swiper-button-disabled
	{
	opacity: .35;
	cursor: auto;
	pointer-events: none
}

.swiper-button-prev, .swiper-container-rtl .swiper-button-next {
	background-image:
		url("data:image/svg+xml;charset=utf-8,%3Csvg%20xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg'%20viewBox%3D'0%200%2027%2044'%3E%3Cpath%20d%3D'M0%2C22L22%2C0l2.1%2C2.1L4.2%2C22l19.9%2C19.9L22%2C44L0%2C22L0%2C22L0%2C22z'%20fill%3D'%23007aff'%2F%3E%3C%2Fsvg%3E");
	left: 10px;
	right: auto
}

.swiper-button-next, .swiper-container-rtl .swiper-button-prev {
	background-image:
		url("data:image/svg+xml;charset=utf-8,%3Csvg%20xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg'%20viewBox%3D'0%200%2027%2044'%3E%3Cpath%20d%3D'M27%2C22L27%2C22L5%2C44l-2.1-2.1L22.8%2C22L2.9%2C2.1L5%2C0L27%2C22L27%2C22z'%20fill%3D'%23007aff'%2F%3E%3C%2Fsvg%3E");
	right: 10px;
	left: auto
}

.swiper-button-prev.swiper-button-white, .swiper-container-rtl .swiper-button-next.swiper-button-white
	{
	background-image:
		url("data:image/svg+xml;charset=utf-8,%3Csvg%20xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg'%20viewBox%3D'0%200%2027%2044'%3E%3Cpath%20d%3D'M0%2C22L22%2C0l2.1%2C2.1L4.2%2C22l19.9%2C19.9L22%2C44L0%2C22L0%2C22L0%2C22z'%20fill%3D'%23ffffff'%2F%3E%3C%2Fsvg%3E")
}

.swiper-button-next.swiper-button-white, .swiper-container-rtl .swiper-button-prev.swiper-button-white
	{
	background-image:
		url("data:image/svg+xml;charset=utf-8,%3Csvg%20xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg'%20viewBox%3D'0%200%2027%2044'%3E%3Cpath%20d%3D'M27%2C22L27%2C22L5%2C44l-2.1-2.1L22.8%2C22L2.9%2C2.1L5%2C0L27%2C22L27%2C22z'%20fill%3D'%23ffffff'%2F%3E%3C%2Fsvg%3E")
}

.swiper-button-prev.swiper-button-black, .swiper-container-rtl .swiper-button-next.swiper-button-black
	{
	background-image:
		url("data:image/svg+xml;charset=utf-8,%3Csvg%20xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg'%20viewBox%3D'0%200%2027%2044'%3E%3Cpath%20d%3D'M0%2C22L22%2C0l2.1%2C2.1L4.2%2C22l19.9%2C19.9L22%2C44L0%2C22L0%2C22L0%2C22z'%20fill%3D'%23000000'%2F%3E%3C%2Fsvg%3E")
}

.swiper-button-next.swiper-button-black, .swiper-container-rtl .swiper-button-prev.swiper-button-black
	{
	background-image:
		url("data:image/svg+xml;charset=utf-8,%3Csvg%20xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg'%20viewBox%3D'0%200%2027%2044'%3E%3Cpath%20d%3D'M27%2C22L27%2C22L5%2C44l-2.1-2.1L22.8%2C22L2.9%2C2.1L5%2C0L27%2C22L27%2C22z'%20fill%3D'%23000000'%2F%3E%3C%2Fsvg%3E")
}

.swiper-button-lock {
	display: none
}

.swiper-pagination {
	position: absolute;
	text-align: center;
	-webkit-transition: .3s opacity;
	-o-transition: .3s opacity;
	transition: .3s opacity;
	-webkit-transform: translate3d(0, 0, 0);
	transform: translate3d(0, 0, 0);
	z-index: 10
}

.swiper-pagination.swiper-pagination-hidden {
	opacity: 0
}

.swiper-container-horizontal>.swiper-pagination-bullets,
	.swiper-pagination-custom, .swiper-pagination-fraction {
	bottom: 10px;
	left: 0;
	width: 100%
}

.swiper-pagination-bullets-dynamic {
	overflow: hidden;
	font-size: 0
}

.swiper-pagination-bullets-dynamic .swiper-pagination-bullet {
	-webkit-transform: scale(.33);
	-ms-transform: scale(.33);
	transform: scale(.33);
	position: relative
}

.swiper-pagination-bullets-dynamic .swiper-pagination-bullet-active {
	-webkit-transform: scale(1);
	-ms-transform: scale(1);
	transform: scale(1)
}

.swiper-pagination-bullets-dynamic .swiper-pagination-bullet-active-main
	{
	-webkit-transform: scale(1);
	-ms-transform: scale(1);
	transform: scale(1)
}

.swiper-pagination-bullets-dynamic .swiper-pagination-bullet-active-prev
	{
	-webkit-transform: scale(.66);
	-ms-transform: scale(.66);
	transform: scale(.66)
}

.swiper-pagination-bullets-dynamic .swiper-pagination-bullet-active-prev-prev
	{
	-webkit-transform: scale(.33);
	-ms-transform: scale(.33);
	transform: scale(.33)
}

.swiper-pagination-bullets-dynamic .swiper-pagination-bullet-active-next
	{
	-webkit-transform: scale(.66);
	-ms-transform: scale(.66);
	transform: scale(.66)
}

.swiper-pagination-bullets-dynamic .swiper-pagination-bullet-active-next-next
	{
	-webkit-transform: scale(.33);
	-ms-transform: scale(.33);
	transform: scale(.33)
}

.swiper-pagination-bullet {
	width: 8px;
	height: 8px;
	display: inline-block;
	border-radius: 100%;
	background: #000;
	opacity: .2
}

button.swiper-pagination-bullet {
	border: none;
	margin: 0;
	padding: 0;
	-webkit-box-shadow: none;
	box-shadow: none;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none
}

.swiper-pagination-clickable .swiper-pagination-bullet {
	cursor: pointer
}

.swiper-pagination-bullet-active {
	opacity: 1;
	background: #007aff
}

.swiper-container-vertical>.swiper-pagination-bullets {
	right: 10px;
	top: 50%;
	-webkit-transform: translate3d(0, -50%, 0);
	transform: translate3d(0, -50%, 0)
}

.swiper-container-vertical>.swiper-pagination-bullets .swiper-pagination-bullet
	{
	margin: 6px 0;
	display: block
}

.swiper-container-vertical>.swiper-pagination-bullets.swiper-pagination-bullets-dynamic
	{
	top: 50%;
	-webkit-transform: translateY(-50%);
	-ms-transform: translateY(-50%);
	transform: translateY(-50%);
	width: 8px
}

.swiper-container-vertical>.swiper-pagination-bullets.swiper-pagination-bullets-dynamic .swiper-pagination-bullet
	{
	display: inline-block;
	-webkit-transition: .2s top, .2s -webkit-transform;
	transition: .2s top, .2s -webkit-transform;
	-o-transition: .2s transform, .2s top;
	transition: .2s transform, .2s top;
	transition: .2s transform, .2s top, .2s -webkit-transform
}

.swiper-container-horizontal>.swiper-pagination-bullets .swiper-pagination-bullet
	{
	margin: 0 4px;
}

.swiper-container-horizontal>.swiper-pagination-bullets.swiper-pagination-bullets-dynamic
	{
	left: 50%;
	-webkit-transform: translateX(-50%);
	-ms-transform: translateX(-50%);
	transform: translateX(-50%);
	white-space: nowrap
}

.swiper-container-horizontal>.swiper-pagination-bullets.swiper-pagination-bullets-dynamic .swiper-pagination-bullet
	{
	-webkit-transition: .2s left, .2s -webkit-transform;
	transition: .2s left, .2s -webkit-transform;
	-o-transition: .2s transform, .2s left;
	transition: .2s transform, .2s left;
	transition: .2s transform, .2s left, .2s -webkit-transform
}

.swiper-container-horizontal.swiper-container-rtl>.swiper-pagination-bullets-dynamic .swiper-pagination-bullet
	{
	-webkit-transition: .2s right, .2s -webkit-transform;
	transition: .2s right, .2s -webkit-transform;
	-o-transition: .2s transform, .2s right;
	transition: .2s transform, .2s right;
	transition: .2s transform, .2s right, .2s -webkit-transform
}

.swiper-pagination-progressbar {
	background: rgba(0, 0, 0, .25);
	position: absolute
}

.swiper-pagination-progressbar .swiper-pagination-progressbar-fill {
	background: #007aff;
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	-webkit-transform: scale(0);
	-ms-transform: scale(0);
	transform: scale(0);
	-webkit-transform-origin: left top;
	-ms-transform-origin: left top;
	transform-origin: left top
}

.swiper-container-rtl .swiper-pagination-progressbar .swiper-pagination-progressbar-fill
	{
	-webkit-transform-origin: right top;
	-ms-transform-origin: right top;
	transform-origin: right top
}

.swiper-container-horizontal>.swiper-pagination-progressbar,
	.swiper-container-vertical>.swiper-pagination-progressbar.swiper-pagination-progressbar-opposite
	{
	width: 100%;
	height: 4px;
	left: 0;
	top: 0
}

.swiper-container-horizontal>.swiper-pagination-progressbar.swiper-pagination-progressbar-opposite,
	.swiper-container-vertical>.swiper-pagination-progressbar {
	width: 4px;
	height: 100%;
	left: 0;
	top: 0
}

.swiper-pagination-white .swiper-pagination-bullet-active {
	background: #fff
}

.swiper-pagination-progressbar.swiper-pagination-white {
	background: rgba(255, 255, 255, .25)
}

.swiper-pagination-progressbar.swiper-pagination-white .swiper-pagination-progressbar-fill
	{
	background: #fff
}

.swiper-pagination-black .swiper-pagination-bullet-active {
	background: #000
}

.swiper-pagination-progressbar.swiper-pagination-black {
	background: rgba(0, 0, 0, .25)
}

.swiper-pagination-progressbar.swiper-pagination-black .swiper-pagination-progressbar-fill
	{
	background: #000
}

.swiper-pagination-lock {
	display: none
}

.swiper-scrollbar {
	border-radius: 10px;
	position: relative;
	-ms-touch-action: none;
	background: rgba(0, 0, 0, .1)
}

.swiper-container-horizontal>.swiper-scrollbar {
	position: absolute;
	left: 1%;
	bottom: 3px;
	z-index: 50;
	height: 5px;
	width: 98%
}

.swiper-container-vertical>.swiper-scrollbar {
	position: absolute;
	right: 3px;
	top: 1%;
	z-index: 50;
	width: 5px;
	height: 98%
}

.swiper-scrollbar-drag {
	height: 100%;
	width: 100%;
	position: relative;
	background: rgba(0, 0, 0, .5);
	border-radius: 10px;
	left: 0;
	top: 0
}

.swiper-scrollbar-cursor-drag {
	cursor: move
}

.swiper-scrollbar-lock {
	display: none
}

.swiper-zoom-container {
	width: 100%;
	height: 100%;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: center;
	-webkit-justify-content: center;
	-ms-flex-pack: center;
	justify-content: center;
	-webkit-box-align: center;
	-webkit-align-items: center;
	-ms-flex-align: center;
	align-items: center;
	text-align: center
}

.swiper-zoom-container>canvas, .swiper-zoom-container>img,
	.swiper-zoom-container>svg {
	max-width: 100%;
	max-height: 100%;
	-o-object-fit: contain;
	object-fit: contain
}

.swiper-slide-zoomed {
	cursor: move
}

.swiper-lazy-preloader {
	width: 42px;
	height: 42px;
	position: absolute;
	left: 50%;
	top: 50%;
	margin-left: -21px;
	margin-top: -21px;
	z-index: 10;
	-webkit-transform-origin: 50%;
	-ms-transform-origin: 50%;
	transform-origin: 50%;
	-webkit-animation: swiper-preloader-spin 1s steps(12, end) infinite;
	animation: swiper-preloader-spin 1s steps(12, end) infinite
}

.swiper-lazy-preloader:after {
	display: block;
	content: '';
	width: 100%;
	height: 100%;
	background-image:
		url("data:image/svg+xml;charset=utf-8,%3Csvg%20viewBox%3D'0%200%20120%20120'%20xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg'%20xmlns%3Axlink%3D'http%3A%2F%2Fwww.w3.org%2F1999%2Fxlink'%3E%3Cdefs%3E%3Cline%20id%3D'l'%20x1%3D'60'%20x2%3D'60'%20y1%3D'7'%20y2%3D'27'%20stroke%3D'%236c6c6c'%20stroke-width%3D'11'%20stroke-linecap%3D'round'%2F%3E%3C%2Fdefs%3E%3Cg%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%20transform%3D'rotate(30%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%20transform%3D'rotate(60%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%20transform%3D'rotate(90%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%20transform%3D'rotate(120%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%20transform%3D'rotate(150%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.37'%20transform%3D'rotate(180%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.46'%20transform%3D'rotate(210%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.56'%20transform%3D'rotate(240%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.66'%20transform%3D'rotate(270%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.75'%20transform%3D'rotate(300%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.85'%20transform%3D'rotate(330%2060%2C60)'%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E");
	background-position: 50%;
	background-size: 100%;
	background-repeat: no-repeat
}

.swiper-lazy-preloader-white:after {
	background-image:
		url("data:image/svg+xml;charset=utf-8,%3Csvg%20viewBox%3D'0%200%20120%20120'%20xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg'%20xmlns%3Axlink%3D'http%3A%2F%2Fwww.w3.org%2F1999%2Fxlink'%3E%3Cdefs%3E%3Cline%20id%3D'l'%20x1%3D'60'%20x2%3D'60'%20y1%3D'7'%20y2%3D'27'%20stroke%3D'%23fff'%20stroke-width%3D'11'%20stroke-linecap%3D'round'%2F%3E%3C%2Fdefs%3E%3Cg%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%20transform%3D'rotate(30%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%20transform%3D'rotate(60%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%20transform%3D'rotate(90%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%20transform%3D'rotate(120%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%20transform%3D'rotate(150%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.37'%20transform%3D'rotate(180%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.46'%20transform%3D'rotate(210%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.56'%20transform%3D'rotate(240%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.66'%20transform%3D'rotate(270%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.75'%20transform%3D'rotate(300%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.85'%20transform%3D'rotate(330%2060%2C60)'%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E")
}

@
-webkit-keyframes swiper-preloader-spin { 100%{
	-webkit-transform: rotate(360deg);
	transform: rotate(360deg)
}

}
@
keyframes swiper-preloader-spin { 100%{
	-webkit-transform: rotate(360deg);
	transform: rotate(360deg)
}

}
.swiper-container .swiper-notification {
	position: absolute;
	left: 0;
	top: 0;
	pointer-events: none;
	opacity: 0;
	z-index: -1000
}

.swiper-container-fade.swiper-container-free-mode .swiper-slide {
	-webkit-transition-timing-function: ease-out;
	-o-transition-timing-function: ease-out;
	transition-timing-function: ease-out
}

.swiper-container-fade .swiper-slide {
	pointer-events: none;
	-webkit-transition-property: opacity;
	-o-transition-property: opacity;
	transition-property: opacity
}

.swiper-container-fade .swiper-slide .swiper-slide {
	pointer-events: none
}

.swiper-container-fade .swiper-slide-active, .swiper-container-fade .swiper-slide-active .swiper-slide-active
	{
	pointer-events: auto
}

.swiper-container-cube {
	overflow: visible
}

.swiper-container-cube .swiper-slide {
	pointer-events: none;
	-webkit-backface-visibility: hidden;
	backface-visibility: hidden;
	z-index: 1;
	visibility: hidden;
	-webkit-transform-origin: 0 0;
	-ms-transform-origin: 0 0;
	transform-origin: 0 0;
	width: 100%;
	height: 100%
}

.swiper-container-cube .swiper-slide .swiper-slide {
	pointer-events: none
}

.swiper-container-cube.swiper-container-rtl .swiper-slide {
	-webkit-transform-origin: 100% 0;
	-ms-transform-origin: 100% 0;
	transform-origin: 100% 0
}

.swiper-container-cube .swiper-slide-active, .swiper-container-cube .swiper-slide-active .swiper-slide-active
	{
	pointer-events: auto
}

.swiper-container-cube .swiper-slide-active, .swiper-container-cube .swiper-slide-next,
	.swiper-container-cube .swiper-slide-next+.swiper-slide,
	.swiper-container-cube .swiper-slide-prev {
	pointer-events: auto;
	visibility: visible
}

.swiper-container-cube .swiper-slide-shadow-bottom,
	.swiper-container-cube .swiper-slide-shadow-left,
	.swiper-container-cube .swiper-slide-shadow-right,
	.swiper-container-cube .swiper-slide-shadow-top {
	z-index: 0;
	-webkit-backface-visibility: hidden;
	backface-visibility: hidden
}

.swiper-container-cube .swiper-cube-shadow {
	position: absolute;
	left: 0;
	bottom: 0;
	width: 100%;
	height: 100%;
	background: #000;
	opacity: .6;
	-webkit-filter: blur(50px);
	filter: blur(50px);
	z-index: 0
}

.swiper-container-flip {
	overflow: visible
}

.swiper-container-flip .swiper-slide {
	pointer-events: none;
	-webkit-backface-visibility: hidden;
	backface-visibility: hidden;
	z-index: 1
}

.swiper-container-flip .swiper-slide .swiper-slide {
	pointer-events: none
}

.swiper-container-flip .swiper-slide-active, .swiper-container-flip .swiper-slide-active .swiper-slide-active
	{
	pointer-events: auto
}

.swiper-container-flip .swiper-slide-shadow-bottom,
	.swiper-container-flip .swiper-slide-shadow-left,
	.swiper-container-flip .swiper-slide-shadow-right,
	.swiper-container-flip .swiper-slide-shadow-top {
	z-index: 0;
	-webkit-backface-visibility: hidden;
	backface-visibility: hidden
}

.swiper-container-coverflow .swiper-wrapper {
	-ms-perspective: 1200px
}

.cycle-slideshow img {
	width: 200px;
	height: 220px;
}

</style>

<!-- <script type="module"> -->
<!--   import Swiper from 'https://unpkg.com/swiper/swiper-bundle.esm.browser.min.js' -->

<!--   const swiper = new Swiper(...) -->
<!-- </script> -->
<!-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script> -->
<!-- <script src="http://malsup.github.com/jquery.cycle2.js"></script> -->
<!-- <script src="js/jquery-3.5.1.js"></script> -->
<script type="text/javascript">
	$(document).ready(function(){
		$('.img_open_close').click(function(){
			var img = $('.img_open_close').attr('src')
			
			if(img == "images/quick/quick_open.gif"){
				$('.img_open_close').attr('src','images/quick/quick_close.gif')
				$('#right_bn_wrap').css('width','189px')	
				$('#right_bn_wrap').css('transition','0.5s ease-in-out')
			} else{
				$('.img_open_close').attr('src','images/quick/quick_open.gif')
				$('#right_bn_wrap').css('width','0px')
				$('#right_bn_wrap').css('transition','0.5s ease-in-out')
			}
			
		});
// 		$('.img_open_close').click(function(){
// 			var img = $('.img_open_close').attr('src')
			
// 			if(img == "images/quick/quick_open.gif"){
// 				$('#right_bn_wrap').css('width','189px')	
// 			} else {
// 				$('#right_bn_wrap').css('width','0px')
// 			}
// 		});
		
		
	});
</script>
</head>
<body>

<div id="right_bn_wrap" style="margin-right: 0px;">

	<div class="sm_right_bn">
    <!-- ????????? ????????? -->
		<div class="cboth"><a href="#none" onclick="$('html,body').animate({scrollTop:0},'slow')"><img src="images/quick/quick_up.png"></a></div>

		<div class="right_quick_close cboth "><img src="images/quick/quick_open.gif" class="img_open_close"></div>
		<div class="cboth sm_btn"><a href="Main.go"><img src="images/quick/quick_home.gif"><div class="sm_btn_text">Home</div></a></div>
		<div class="cboth sm_btn"><a href="MyOrderList.or"><img src="images/quick/quick_delivery.gif"><div class="sm_btn_text">MyOrderList</div></a></div>
		<div class="cboth sm_btn"><a href="Cart.ca"><img src="images/quick/quick_cart.gif"><div class="sm_btn_text">Cart</div></a></div>
		<div class="cboth sm_btn"><a href="MemberMypage.mo"><img src="images/quick/quick_mypage.gif"><div class="sm_btn_text">Mypage</div></a></div>
		<div class="cboth sm_btn"><a href="ProductMylikeList.po"><img src="images/quick/quick_like.gif"><div class="sm_btn_text">Like List</div></a></div>
		
                <div class="cboth"><a href="#none" onclick="$('html,body').animate({scrollTop:$(document).height()},'slow');"><img src="images/quick/quick_down.png"></a></div>
	</div>

	<!-- ????????????????????? ???????????? -->
	<div class="swiper-container">
			<div class="cycle-slideshow" data-cycle-loader="wait">
	    		<img src="images/quick/quick_ban01.jpg">
	    		<img src="images/quick/quick_ban02.jpg">
   				<img src="images/quick/quick_ban03.jpg">
    			<img src="images/quick/quick_ban04.jpg">
			</div>
	</div>
	<!-- ????????? ???????????? -->
		<div class="cboth quick_comm_area">
			<ul>
				<li><a href="Main.go">HOME</a></li>
				<li><a href="ProductShop.po?type=X&xcode=CLOTHES">CLOTHES</a></li>
			</ul>
			<ul>
				<li><a href="ProductShop.po?type=X&xcode=BAGS">BAGS</a></li>
				<li><a href="ProductShop.po?type=X&xcode=SHOES">SHOES</a></li>
			</ul>
			<ul>
				<li><a href="CommList.co">COMMUNITY</a></li>
				<li><a href="MemberMypage.mo">MY PAGE</a></li>
			</ul>
			<ul>
				<li><a href="Cart.ca">CART</a></li>
				<li><a href="MyOrderList.or">MY ORDER</a></li>
			</ul>
		</div>
	
	<!-- ????????? ???????????? -->
	<div class="quick_cs cboth">
		<div class="quick_ttitle cboth">CS CENTER</div>
		<div class="quick_bt cboth"></div>
		<div class="quick_cs_numb cboth">01.2345.6789</div>
		<div class="quick_cs_txt cboth">
			MON -FRI AM 10:00 -  PM 17:00<br>
			LUNCH  PM 12:00 - 13:00<br>
			SAT, SUN, HOLIDAY OFF
		</div>
	</div>

	<!-- ????????? ???????????? -->
	<div class="quick_bank cboth">
		<div class="quick_ttitle cboth">BANK INFO</div>
		<div class="quick_bt cboth"></div>
		<div class="quick_bank_txt cboth">
			???????????? 012-3456-78-9<br>
			????????? : ????????????
		</div>
	</div>

	<div class="quick_sns cboth">
	<!-- ????????? sns -->
		<ul>
			<li><a href="https://www.instagram.com/oryanykorea/" target="_blank"><img src="images/quick/quick_insta.gif"></a></li>
			<li><a href="https://pf.kakao.com/_Vxnxbel" target="_blank"><img src="images/quick/quick_kakaoch.gif"></a></li>
			<li><a href="https://www.facebook.com/OryanyKorea" target="_blank"><img src="images/quick/quick_facebook.gif"></a></li>
		</ul>
	</div>
</div>
<!-- ????????? ???????????? -->
<script>
  (function() {
    var w = window;
    if (w.ChannelIO) {
      return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
    }
    var ch = function() {
      ch.c(arguments);
    };
    ch.q = [];
    ch.c = function(args) {
      ch.q.push(args);
    };
    w.ChannelIO = ch;
    function l() {
      if (w.ChannelIOInitialized) {
        return;
      }
      w.ChannelIOInitialized = true;
      var s = document.createElement('script');
      s.type = 'text/javascript';
      s.async = true;
      s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
      s.charset = 'UTF-8';
      var x = document.getElementsByTagName('script')[0];
      x.parentNode.insertBefore(s, x);
    }
    if (document.readyState === 'complete') {
      l();
    } else if (window.attachEvent) {
      window.attachEvent('onload', l);
    } else {
      window.addEventListener('DOMContentLoaded', l, false);
      window.addEventListener('load', l, false);
    }
  })();
  ChannelIO('boot', {
    "pluginKey": "659424b7-7d06-4adb-85f3-3bfde8a3938d", //please fill with your plugin key
    "memberId": "YOUR_USER_ID", //fill with user id
    "profile": {
      "name": "", //fill with user name
      "mobileNumber": "", //fill with user phone number
      "CUSTOM_VALUE_1": "VALUE_1", //any other custom meta data
      "CUSTOM_VALUE_2": "VALUE_2"
    }
  });
</script>
<!-- ????????? ???????????? ??? -->
<!-- </body> -->
<!-- </html> -->

var ticking = false;
var isFirefox = /Firefox/i.test(navigator.userAgent);
var isIe =
	/MSIE/i.test(navigator.userAgent) ||
	/Trident.*rv\:11\./i.test(navigator.userAgent);
var scrollSensitivitySetting = 30;
var slideDurationSetting = 600;
var currentSlideNumber = 0;
var pageSlide = $(".full-page section");
var totalSlideNumber = pageSlide.length;

function parallaxScroll(evt) {
	let delta = 0;
	if (isFirefox) {
		delta = evt.detail * -120;
	} else if (isIe) {
		delta = -evt.deltaY;
	} else {
		delta = evt.wheelDelta;
	}

	if (ticking != true) {
		if (delta <= -scrollSensitivitySetting) {
			ticking = true;
			if (currentSlideNumber !== totalSlideNumber - 1) {
				currentSlideNumber++;
				nextItem();
			}
			slideDurationTimeout(slideDurationSetting);
		}
		if (delta >= scrollSensitivitySetting) {
			ticking = true;
			if (currentSlideNumber !== 0) {
				currentSlideNumber--;
				previousItem();
			}
			slideDurationTimeout(slideDurationSetting);
		}
	}
}

function slideDurationTimeout(slideDuration) {
	setTimeout(function () {
		ticking = false;
	}, slideDuration);
}

var mousewheelEvent = isFirefox ? "DOMMouseScroll" : "wheel";
window.addEventListener(mousewheelEvent, _.throttle(parallaxScroll, 60), false);

function nextItem() {
	$("section").removeClass("current-page");
	var $previousSlide = pageSlide.eq(currentSlideNumber - 1);
	var $currentSlide = pageSlide.eq(currentSlideNumber);
	$currentSlide.addClass("current-page");
	$previousSlide.removeClass("up-scroll").addClass("down-scroll");
	if ($(window).width() > 1200 && $(".full-page").length >= 1) {
		$("header").addClass("active");
		$("#fake-header-open").addClass("active");
	}
	$("header .search-wrapper").removeClass("active");
	if ($currentSlide.is(":first-child")) {
		$("#to-top").removeClass("active");
		$("#facebook").removeClass("active");
	}
	if (currentSlideNumber == 1 && $(".full-page").length >= 1) {
		$("#to-top").addClass("active");
		$("#facebook").addClass("active");
	}
	$("#nav-pagination ul li").removeClass("active");
	$(
		"#nav-pagination ul li:nth-child(" + (currentSlideNumber + 1) + ")"
	).addClass("active");
}

function previousItem() {
	$("section").removeClass("current-page");
	$("footer").removeClass("active");
	var $currentSlide = pageSlide.eq(currentSlideNumber);
	$currentSlide.addClass("current-page");
	if ($(".full-page").length >= 1) {
		$("#to-top").addClass("active");
		$("#facebook").addClass("active");
	}
	$("#fake-header-open").removeClass("last");
	if ($currentSlide.is(":first-child") && $(".full-page").length >= 1) {
		$("#to-top").removeClass("active");
		$("#facebook").removeClass("active");
		$("header").removeClass("active");
		$("#fake-header-open").removeClass("active");
	}

	$currentSlide.removeClass("down-scroll").addClass("up-scroll");
	$("#nav-pagination ul li").removeClass("active");
	$(
		"#nav-pagination ul li:nth-child(" + (currentSlideNumber + 1) + ")"
	).addClass("active");
}

function setBackgroundElement() {
	$("[setBackground]").each(function () {
		var background = $(this).attr("setBackground");
		$(this).css({
			"background-image": "url(" + background + ")",
			"background-size": "cover",
			"background-position": "center center",
		});
	});
	$("[setBackgroundRepeat]").each(function () {
		var background = $(this).attr("setBackgroundRepeat");
		$(this).css({
			"background-image": "url(" + background + ")",
			"background-repeat": "repeat",
		});
	});
}

function EqualHeightElement(el) {
	let height = 0;
	let thisHeight = 0;
	$(el).each(function () {
		thisHeight = $(this).height();
		if (thisHeight > height) {
			height = thisHeight;
		}
	});
	$(el).height(height);
}

function scrollToTop() {
	window.addEventListener("scroll", function () {
		var bannerheight = $("#pagebanner").outerHeight();
		var heightHeader = $("header").outerHeight();
		if (
			window.pageYOffset > bannerheight + heightHeader &&
			$(".full-page").length == 0
		) {
			$("#to-top").addClass("active");
			$("#facebook").addClass("active");
		} else {
			$("#to-top").removeClass("active");
			$("#facebook").removeClass("active");
		}
	});
	if ($(".full-page").length >= 1) {
		$("#to-top").on("click", function () {
			currentSlideNumber = 0;
			$("section").removeClass("down-scroll");
			$(".home-page-banner").addClass("current-page");
			$("header").removeClass("active");
			$("#fake-header-open").removeClass("active");
		});
	} else {
		$("#to-top").on("click", function (e) {
			e.preventDefault();
			$("html,body").animate({
				scrollTop: 0,
			});
			$("#back-to-top").removeClass("active");
			$("#facebook").removeClass("active");
		});
	}
}

function createPagination() {
	$("main").append("<div id='nav-pagination'><ul></ul></div>");
	var lstSection = $(".full-page section, footer");
	for (let i = 0; i < totalSlideNumber; i++) {
		var spanHtml = "";
		if ($(lstSection[i]).attr("data-title") != undefined) {
			spanHtml =
				" <span>" + $(lstSection[i]).attr("data-title") + "</span>";
		}
		if (i == 0) {
			$("#nav-pagination ul").append(
				"<li class='active' data-section='" +
					(i + 1) +
					"'>" +
					(i + 1) +
					spanHtml +
					"</li>"
			);
		} else {
			$("#nav-pagination ul").append(
				"<li data-section='" +
					(i + 1) +
					"'>" +
					(i + 1) +
					spanHtml +
					"</li>"
			);
		}
	}
	$("#nav-pagination ul li").on("click", function () {
		$("#nav-pagination ul li").removeClass("active");
		$(this).addClass("active");
		let e = $(this).attr("data-section") - 1;
		$(".full-page section").removeClass("down-scroll up-scroll");
		if (e < currentSlideNumber) {
			currentSlideNumber = e;
			$(
				".full-page section:nth-child(" + (currentSlideNumber + 1) + ")"
			).addClass("up-scroll current-page");
			$(".full-page section").removeClass("down-scroll");
			for (let i = currentSlideNumber; i < totalSlideNumber; i++) {
				$(
					".full-page section:nth-child(" +
						(currentSlideNumber + 1) +
						")"
				).addClass("up-scroll");
			}
		} else {
			currentSlideNumber = e;
			$(".full-page section").removeClass("current-page");
			$(
				".full-page section:nth-child(" + (currentSlideNumber + 1) + ")"
			).addClass("current-page");
			for (let i = 0; i < currentSlideNumber; i++) {
				$(".full-page section:nth-child(" + (i + 1) + ")").addClass(
					"down-scroll"
				);
			}
		}
	});
}

function toggleSearchWrapper() {
	$(".header-icon .btn-search").on("click", function () {
		$("header").find(".search-wrapper").toggleClass("active");
	});
	$("header .search-wrapper .close-button").on("click", function () {
		$("header .search-wrapper").toggleClass("active");
	});
	$("section").on("click", function () {
		$("header .search-wrapper").removeClass("active");
	});
}

function listBanerSlide() {
	var myswiper = new Swiper(".banner-wrapper .swiper-container", {
		loop: false,
		speed: 2000,
		effect: "fade",
		grabCursor: true,
		autoplay: {
			delay: 3000,
			disableOnInteraction: false,
		},
		fadeEffect: {
			crossFade: true,
		},
	});
}

function menuFake() {
	let menuleft = $("header .main-nav .left-nav .navbar-nav .nav-item");
	let menuright = $("header .main-nav .right-nav .navbar-nav .nav-item");
	let footer = $(".footer");
	menuleft.clone().appendTo("#fake-header .menu-fake-header");
	menuright.clone().appendTo("#fake-header .menu-fake-header");
	var e = $("header .main-list-wrapper").html();
	$("#fake-header").append(e);
	$("#fake-header-open").on("click", function () {
		$("#fake-header").addClass("active");
	});
	$("#fake-header .close-button").on("click", function () {
		$("#fake-header").removeClass("active");
	});
	if ($(".full-page").length >= 1) {
		footer.appendTo(".full-page .home-page-6");
	} else {
		footer.appendTo("footer");
	}
}

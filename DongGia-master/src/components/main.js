$(document).ready(function () {
	// add box-shadow for header
	if ($(window).scrollTop() > 0) {
		$('header').addClass('fixed')
	} else {
		$('header').removeClass('fixed')
	}
	$(window).on('scroll', function () {
		if ($(window).scrollTop() > 0) {
			$('header').addClass('fixed')
		} else {
			$('header').removeClass('fixed')
		}
	})

	// Header Language
	$('header .language .current').on('click', function () {
		$('header .language .dropdown').toggleClass('active')
		$(this).toggleClass('active')
	})

	// Header search
	$('header .search .search-toggle').on('click', function () {
		$('body').removeClass('hiddenX')
		$('header .search .searchbox').slideToggle()
		$('header .backdrop').hide()
		$('header .category-list').removeClass('active')
		$('header .sub-menu').removeClass('active')
		$('header .language .dropdown').removeClass('active')
		$('header .language .current').removeClass('active')
	})

	// Header menu mobile
	$('header .toggle-menu').on('click', function () {
		$('header .search .searchbox').hide()
		$('header .language .dropdown').removeClass('active')
		$('header .language .current').removeClass('active')
		$('header .backdrop').fadeToggle()
		$('header .category-list').toggleClass('active')
		$('header .sub-menu').toggleClass('active')
		$('body').toggleClass('hiddenX')
	})

	// Remove menu toggle effect
	$('header .backdrop').on('click', function () {
		$('body').removeClass('hiddenX')
		$('header .search .searchbox').hide()
		$('header .language .dropdown').removeClass('active')
		$('header .language .current').removeClass('active')
		$('header .backdrop').hide()
		$('header .category-list').removeClass('active')
		$('header .sub-menu').removeClass('active')
	})
	$(window).on('resize', function () {
		$('body').removeClass('hiddenX')
		$('header .search .searchbox').hide()
		$('header .language .dropdown').removeClass('active')
		$('header .language .current').removeClass('active')
		$('header .backdrop').hide()
		$('header .category-list').removeClass('active')
		$('header .sub-menu').removeClass('active')
	})

	// go stop button
	$('#gotop').on('click', function () {
		$('html,body').animate({
			scrollTop: 0
		}, 1000)
	})

	// Product toggle menu
	$('.product-category .nav-item').on('click', function () {
		$(this).toggleClass('active')
		$(this).find('.dropdown').fadeToggle()
		$('.product-category .nav-item').not(this).removeClass('active')
		$('.product-category .nav-item').not(this).find('.dropdown').hide()
	})

	// Product image slide
	var productThumbnail = new Swiper('.product-image .thumbnail', {
		slidesPerView: 4,
		speed: 1200,
		loop: true,
		slideToClickedSlide: true,
		autoplay: {
			delay: 3500,
			disableOnInteraction: false,
		}
	})
	productThumbnail.on('click', function () {
		var target = $('.product-image .thumbnail .swiper-slide-active').attr('data-target')
		$('.product-image .big .slide').not('[data-id=' + target + ']').hide()
		$('[data-id=' + target + ']').fadeIn(400)
	})
	productThumbnail.on('transitionStart', function () {
		var target = $('.product-image .thumbnail .swiper-slide-active').attr('data-target')
		$('.product-image .big .slide').not('[data-id=' + target + ']').hide()
		$('[data-id=' + target + ']').fadeIn(400)
	})

	// Product Tab
	$('.product-tab nav a').on('click', function (e) {
		e.preventDefault()
		$(this).addClass('active')
		$('.product-tab nav a').not(this).removeClass('active')
		$('.product-tab .pcontent').not(target).hide()
		var target = $(this).attr('href')
		$(target).fadeIn()
	})
	// Ability Client
	var abilityClient = new Swiper('.ability .module-ability .module-img .swiper-container ', {
		slidesPerView: 1,
		loop: true,
		spaceBetween: 0,
		navigation: {
			nextEl: '.ability .module-ability .module-img .swiper-button-next',
			prevEl: '.ability .module-ability .module-img .swiper-button-prev',
		},
		autoplay: {
			delay: 3000,
			disableOnInteraction: false,
		},
	})
	//Projected 
	var projectedClient = new Swiper('.ability .module-project .module-client .project-client', {
		slidesPerView: 3,
		loop: true,
		spaceBetween: 20,
		navigation: {
			nextEl: '.ability .module-project .module-client .swiper-button-next',
			prevEl: '.ability .module-project .module-client .swiper-button-prev',
		},
		autoplay: {
			delay: 3000,
			disableOnInteraction: false,
		},
		breakpoints: {
			768: {
				slidesPerView: 1,
			},
		}
	})
	// About Client
	var aboutClient = new Swiper('.about .module-partner .partner-client', {
		slidesPerView: 5,
		loop: true,
		spaceBetween: 0,
		navigation: {
			nextEl: '.about .module-partner .module-client .swiper-button-next',
			prevEl: '.about .module-partner .module-client .swiper-button-prev',
		},
		autoplay: {
			delay: 3000,
			disableOnInteraction: false,
		},
		breakpoints: {
			768: {
				slidesPerView: 3,
			},
		}
	})
	// Selector Client
	var aboutClient = new Swiper('.jobs .selector-slide .selector-client', {
		slidesPerView: 4,
		loop: true,
		spaceBetween: 1,
		navigation: {
			nextEl: '.jobs .selector .swiper-button-next',
			prevEl: '.jobs .selector .swiper-button-prev',
		},
		autoplay: {
			delay: 3000,
			disableOnInteraction: false,
		},
		breakpoints: {
			768: {
				slidesPerView: 1,
			},
		}
	})
	// Support Questions
	$('.support .module-faqs .support-question .faqs').on('click', function () {
		$('.support .module-faqs .support-question .faqs').toggleClass('active')
		$(this).toggleClass('active').attr('.answer')
		console.log('.answer')
	})
	// product other slide
	var productOther = new Swiper('.product-wrapper .product-other .swiper-container', {
		slidesPerView: 3,
		loop: true,
		speed: 1000,
		spaceBetween: 20,
		autoplay: {
			delay: 3000,
			disableOnInteraction: false,
		},
		breakpoints: {
			768: {
				slidesPerView: 2,
			}
		}
	})
	$('.gallery .Module .moduleContent .gallery-list').lightGallery()
});
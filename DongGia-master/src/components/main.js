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
	$('.toggle-menu').on('click', function () {
		$(this).toggleClass('active')
		$(this).find('.dropdown').fadeToggle()
		$('.toggle-menu').not(this).removeClass('active')
		$('.toggle-menu').not(this).find('.dropdown').hide()
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
	// FAQS support
	let contentDropdown = $('.support .faqs .question')
	contentDropdown.on('click', function () {
		if ($(this).next().is(':hidden') === true) {
			$(this).next().slideDown('slow')
			$(this).parents('.faqs').addClass('active')
		} else {
			$(this).next().slideUp('slow')
			$(this).parents('.faqs').removeClass('active')
		}
	})
	//Home news Client
	var otherNewClient = new Swiper('.home-news .swiper-container', {
		slidesPerView: 3,
		loop: true,
		speed: 1200,
		spaceBetween: 20,
		navigation: {
			nextEl: '.home-news .btn-group .swiper-button-next',
			prevEl: '.home-news .btn-group .swiper-button-prev',
		},

		breakpoints: {
			768: {
				slidesPerView: 2,
			},
			576: {
				slidesPerView: 1,
			}
		}
	})
	// Home Client
	var aboutClient = new Swiper('.popular-project .swiper-container', {
		slidesPerView: 1,
		loop: true,
		spaceBetween: 20,
		speed: 1200,
		navigation: {
			nextEl: '.popular-project .btn-group .swiper-button-next',
			prevEl: '.popular-project .btn-group .swiper-button-prev',
		},
		autoplay: {
			delay: 3000,
			disableOnInteraction: false,
		},
	})
	// Ability Client
	var abilityClient = new Swiper('.ability .col-4 .swiper-container ', {
		slidesPerView: 1,
		loop: true,
		spaceBetween: 0,
		speed: 1200,
		navigation: {
			nextEl: '.ability .col-4 .swiper-button-next',
			prevEl: '.ability .col-4 .swiper-button-prev',
		},
		autoplay: {
			delay: 3000,
			disableOnInteraction: false,
		},
	})
	// Other-News Detail
	var otherNewClient = new Swiper('.otherNews .swiper-container', {
		slidesPerView: 3,
		loop: true,
		speed: 1200,
		spaceBetween: 22,
		navigation: {
			nextEl: '.otherNews .btn-group .swiper-button-next',
			prevEl: '.otherNews .btn-group .swiper-button-prev',
		},
		autoplay: {
			delay: 3000,
			disableOnInteraction: false,
		},
		breakpoints: {
			768: {
				slidesPerView: 2,
			},
			576: {
				slidesPerView: 1,
			}
		}
	})
	//Projected 
	var projectedClient = new Swiper('.projected .swiper-container', {
		slidesPerView: 3,
		loop: true,
		speed: 1200,
		spaceBetween: 22,
		navigation: {
			nextEl: '.projected .btn-group .swiper-button-next',
			prevEl: '.projected .btn-group .swiper-button-prev',
		},
		autoplay: {
			delay: 5000,
			disableOnInteraction: false,
		},
		breakpoints: {
			768: {
				slidesPerView: 2,
			},
			576: {
				slidesPerView: 1,
			}
		}
	})
	// Other project
	var projectedClient = new Swiper('.other-project .swiper-container', {
		slidesPerView: 3,
		loop: true,
		speed: 1200,
		spaceBetween: 22,
		navigation: {
			nextEl: '.other-project .btn-group .swiper-button-next',
			prevEl: '.other-project .btn-group .swiper-button-prev',
		},
		autoplay: {
			delay: 5000,
			disableOnInteraction: false,
		},
		breakpoints: {
			768: {
				slidesPerView: 2,
			},
			576: {
				slidesPerView: 1,
			}
		}
	})
	// About Client
	var aboutClient = new Swiper('.module-partner .swiper-container', {
		slidesPerView: 5,
		loop: true,
		speed: 2000,
		spaceBetween: 0,
		navigation: {
			nextEl: '.module-partner .btn-group .swiper-button-next',
			prevEl: '.module-partner .btn-group .swiper-button-prev',
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
	var aboutClient = new Swiper('.other .swiper-container', {
		slidesPerView: 4,
		loop: true,
		spaceBetween: 1,
		speed: 2000,
		navigation: {
			nextEl: '.other .swiper-button-next',
			prevEl: '.other .swiper-button-prev',
		},
		autoplay: {
			delay: 3000,
			disableOnInteraction: false,
		},
		breakpoints: {
			992: {
				slidesPerView: 2,
			},
			576: {
				slidesPerView: 1,
			}
		}
	})
	// Support Questions
	//News button
	$('.new-event nav').removeClass('active')
	$('.new-event nav').on('click', function () {
		$('.new-event nav').removeClass('active')
		$(this).toggleClass('active')
	})
	// Gallery button
	$('.gallery nav').removeClass('active')
	$('.gallery nav').on('click', function () {
		$('.gallery nav').removeClass('active')
		$(this).toggleClass('active')
	})
	// Home Banner
	var bannerClient = new Swiper('.banner-home .swiper-container', {
		freeMode: true,
		freeModeSticky: true,
		slidesPerView: 1,
		spaceBetween: 0,
		loop: true,
		speed: 1000,
		pagination: {
			el: '.banner-home .swiper-pagination',
			clickable: true,
			renderBullet: function (index, className) {
				return '<span class="' + className + '">' + '0' + (index + 1) + '</span>';
			},
		},
	})
	$('.gallery .item .imgbox').lightGallery();
});
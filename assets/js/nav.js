$(function() {
  
  var levels = [0, 0, 0],
      currLevel = 0;
  
  var sections = [];
  
  // Grab slide sections based on class added in Rmd
  Array.from($('.section h1,.subsection h1,.subsubsection h1')).forEach(function(curr) {
    
    // Level is determined by number of 'sub' in the classname
    var level = (Array.from(curr.parentElement.classList).find(function(s) {
      return s.indexOf('section') !== -1;
    }).match(/sub/g) || []).length + 1;
    
    // When going back up a level, reset numbering for finer sections
    if (level < currLevel) {
      for (var i = level; i < levels.length; i++) {
        levels[i] = 0;
      }  // If skip a level to go directly to even finer section, increment levels in between
    } else if (level - currLevel > 1) {
      for (var i = currLevel; i < level - 1; i++) {
        levels[i] += 1;
      }
    }
    
    // Increment current level
    levels[level - 1] += 1;
    currLevel = level;
    
    var num = levels.slice(0, level).join('.'),
        text = curr.outerText,
        slide = curr.parentElement.id;
    
    sections.push({
      'num': num,
      'id': parseInt(slide.match(/\d+/g)),
      'slide': [slide],
      'text': text,
      'title': num + ' ' + text,
      'level': level
    })
  });
  
  var sectionIds = sections.map(function(curr) {
    return curr.id;
  });
  
  console.log(sectionIds);
  
  var sectionSlides = sections.filter(function(curr) {
    return curr.level == 1;
  });
  
  console.log(sectionSlides);
  
  var currSectionIdx = 0;
  
  for (var idx = sections[0].id; idx <= parseInt($('#references')[0].previousElementSibling.id.match(/\d+/g)); idx++) {
    
    var currSlideHeading = $('#slide-' + idx + ' h1')[0];
    
    // If current slide is TOC slide, prepend numbering + increment currSectionIdx if necessary
    if (sectionIds.indexOf(idx) !== -1) {
      if (sectionIds.indexOf(idx) !== currSectionIdx) currSectionIdx++;

      currSlideHeading.prepend(sections[currSectionIdx].num + ' ');
    } else if (currSlideHeading === undefined) {  // Otherwise, add h1 heading only if not provided
      $('#slide-' + idx + ' hr').remove();
      $('#slide-' + idx + ' h2').before('<h1>' + sections[currSectionIdx].title + '</h1><hr>');
    }
    
    // If current slide is not TOC slide, also append slide ID to section
    if (sectionIds.indexOf(idx) === -1) {
      sections[currSectionIdx].slide.push('slide-' + idx);
    }
    
  }
  
  console.log(sections);
  
  var html = '',
      level = 1;
  
  sections.forEach(function(curr) {
    if (curr.level > level) {
      html += '<ul>'.repeat(curr.level - level);
    } else if (curr.level < level) {
      html += '</ul>'.repeat(level - curr.level);
    }
    
    html += '<li data-section="' + curr.slide.join(' ') + '"';
    
    if (curr.slide.indexOf(window.location.hash.slice(2)) !== -1) {
      html += ' class="active"';
    }
    
    html += '><a href="#/' + curr.slide[0] + '">' + (curr.level == 3 ? curr.text : curr.title) + '</a></li>';
    
    level = curr.level;
  })

  $('.section-nav ul').html(html);
  
  
  // Add section heading on subsection title slide
  Array.from($('.reveal .slides .subsection')).forEach(function(currSubsection) {
    var currSlide = parseInt(currSubsection.id.match(/\d+/g));
    
    for (var idx = 0; idx < sectionSlides.length; idx++) {
      if (currSlide >= sectionSlides[idx].id && (sectionSlides[idx + 1] === undefined || currSlide < sectionSlides[idx + 1].id)) {
        $('#slide-' + currSlide + ' h1').after('<h2>' + sectionSlides[idx].title + '</h2>');
      }
    }
  });
  
  function hideNav(currSlide) {
    var currSlide = parseInt(currSlide.match(/\d+/g));
    
    $('.section-nav ul').removeClass('active-section');
    $('.section-nav li[data-section~="slide-' + currSlide + '"]').next('ul').addClass('active-section');
    $('.section-nav li[data-section~="slide-' + currSlide + '"]').parents('ul').addClass('active-section');
  }
  
  hideNav(window.location.hash);
  
  Reveal.addEventListener('slidechanged', function(e) {

    // Highlight active section
    $('.section-nav li').removeClass('active');
    $('.section-nav li[data-section~="' + e.currentSlide.id + '"]').addClass('active');

    hideNav(e.currentSlide.id);
    
  });
  
});

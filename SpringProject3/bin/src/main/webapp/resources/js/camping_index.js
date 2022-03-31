/**
	리뷰 버튼
 */
 
 $(document).ready(function() {
	
	var ac = true;
	
	w_box = document.getElementById("write_box");
	
	w_box.style.display = 'none';
	
	document.getElementById("write_btn").addEventListener('click', function(){
		if(ac == true){
			w_box.style.display = 'block';
			ac = false;	
		}else{
			w_box.style.display = 'none';
			ac = true;
		}
			
	});
	
});

function select_click_event(value, contentId){
	location.href="/project/reviewSort?value="+value+"&contentId="+contentId;
}

$('#recipeCarousel').carousel({
  interval :2000
})

$('.carousel .carousel-item').each(function(){
    var next = $(this).next();
    if (!next.length) {
    next = $(this).siblings(':first');
    }
    next.children(':first-child').clone().appendTo($(this));
    
    for (var i=0;i<2;i++) {
        next=next.next();
        if (!next.length) {
        	next = $(this).siblings(':first');
      	}
        
        next.children(':first-child').clone().appendTo($(this));
      }
});

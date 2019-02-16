'use strict';

class Slider{
	constructor(wrap_class_name){
		this.wrapper = document.querySelector(wrap_class_name);
		this.slider = this.wrapper.querySelector('.slider');
		this.inputs = this.wrapper.querySelectorAll('input[name="point"]');
		this.controls = this.wrapper.querySelectorAll('.slider, .controls, .controls label');
		
		this.i =1;
		this.timer_id;
	
		var self = this;
	}
		
	startTimer(){
		var i = 0;
		this.timer_id = setInterval(function(inputs){
			inputs[i].checked = true;
			i++;
			if( i >= inputs.length ) i = 0;
		}, 2000, this.inputs );
		self = this;
		this.controls.forEach( (el)=>{
			el.addEventListener('mouseover', this.stopTimer);
			el.timer_id = this.timer_id;
			el.restartTimer = this.restartTimer;
		});
		return this.timer_id;
	}

	stopTimer(ev){
		clearInterval(this.timer_id);
		if(ev.target.tagName !== 'LABEL')
			this.addEventListener( 'mouseout', this.restartTimer );
	}
	
	restartTimer(){
		self.startTimer();
	}
}
export default Slider;
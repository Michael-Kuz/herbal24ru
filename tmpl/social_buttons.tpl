<div id='my-share'></div>
<script>
	var share = Ya.share2('my-share', {
		theme: {
			services: 'vkontakte,facebook,gplus,odnoklassniki,twitter,moimir,linkedin,lj',
			counter: false,
			lang: 'ru',
			limit: 8,
			size: 's',
			bare: false
		},
		
		hooks: {
			onready: function () {
				//alert('инициализация блока');
				this.updateContent({ 
					title: '<?=$title?>',
					description: '<?=$description?>',
					url: '<?=$url?>',
					image: '<?=$image?>'
				});
				this.updateContentByService({ 
					facebook: {
						title: '<?=$title?>',
						description: '<?=$description?>',
						url: '<?=$url?>',
						image: '<?=$image?>'
					},
					gplus: {
						title: '<?=$title?>',
						description: '<?=$description?>',
						url: '<?=$url?>',
						image: '<?=$image?>'
					},
					odnoklassniki: {
						title: '<?=$title?>',
						description: '<?=$description?>',
						url: '<?=$url?>',
						image: '<?=$image?>'
					},
					twitter: {
						title: '<?=$title?>',
						description: '<?=$description?>',
						url: '<?=$url?>',
						image: '<?=$image?>'
					},
					moimir: {
						title: '<?=$title?>',
						description: '<?=$description?>',
						url: '<?=$url?>',
						image: '<?=$image?>'
					},
					linkedin: {
						title: '<?=$title?>',
						description: '<?=$description?>',
						url: '<?=$url?>',
						image: '<?=$image?>'
					},
					lj: {
						title: '<?=$title?>',
						description: '<?=$description?>',
						url: '<?=$url?>',
						image: '<?=$image?>'
					}
				});
			},

			onshare: function (name) {
				//alert('нажата кнопка' + name);
			}
		}
	});
</script>
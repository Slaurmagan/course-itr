import consumer from "./consumer"

document.addEventListener('turbolinks:load',() => {
	consumer.subscriptions.create({
		channel: 'PostChannel',
		post_id: document.querySelector('.post').getAttribute('data-post-id')
	}, {
	  connected() {
	    console.log('Connected')
	  },

	  disconnected() {
	    console.log('disconnected')
	  },

	  received(data) {
	  	var html = `
		  <div class="jumbotron">
			<div class="row mb-3">
				<div class="col-6">
					${data.user.first_name} ${data.user.last_name}
				</div>
				<div class="col-6 d-flex justify-content-end">
					<a href="profile/${data.user.id}">${data.user.email}</a>
				</div>
			</div>
			<div class="row">
				<div class="col">
					${data.comment.content}
				</div>
			</div>
		</div>`;
	    console.log(data)
	    document.querySelector('.comments').insertAdjacentHTML('beforeend',html)
	    document.querySelector('textarea.form-control').value = ""
	  }
	});

})
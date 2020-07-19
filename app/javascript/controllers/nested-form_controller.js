import { Controller } from 'stimulus'

export default class extends Controller {
	static targets = ["add_chapter","template"]
	add_association(event) {
		event.preventDefault()
		var content = this.templateTarget.innerHTML.replace(/TEMPLATE_RECORD/g,new Date().valueOf())
		this.add_chapterTarget.insertAdjacentHTML('beforebegin',content)
	}

	remove_association(event) {
		event.preventDefault()
		let item = event.target.closest('.nested-fields')
		item.querySelector("input[name*='destroy'").value = 1
		item.style.display = 'none'
	}
}
var fun = {

	originalHTML: null,

	toggleMURICA: function() {
		var options = {
			isMain: $.find('link[rel="stylesheet"][href="assets/css/main.css"]').length > 0
		}

		fun.swapPage(options);
	},

	squanchify: function() {

		document.body.innerHTML = document.body.innerHTML
			.replace(/University of West Georgia/g, 'Squanch University')
			.replace(/knowing something/g, 'squanching something')
			.replace(/knowing the name/g, 'squanching the name')
			.replace(/Software Engineer/g, 'Squanch Engineer')
			.replace(/Agile Development/g, 'Agile Squanching')
			.replace(/Get to Know Me/g, 'Get To Squanch Me')
			.replace(/Unit Testing/g, 'Squanch Testing')
			.replace(/Hours Worked/g, 'Hours Squanched')
			.replace(/New Jersey/g, 'New Squanchy')
			.replace(/programmers/g, 'squanchers')
			.replace(/JavaScript/g, 'Javasquanch')
			.replace(/Say Hello!/g, 'Squanch Me!')
			.replace(/his tail/g, 'his squanch')
			.replace(/crafting/g, 'squanching')
			.replace(/knowledge/g, 'squanch')
			.replace(/Reliable/g, 'squanchy')
			.replace(/amazing/g, 'squanchy')
			.replace(/Physics/g, 'Squanch')
			.replace(/change/g, 'squanch')
			.replace(/Resume/g, 'Squanch')
			.replace(/done/g, 'squanched')
			.replace(/think/g, 'squanch');

			//Unit Testing
			//Agile Development

	},

	swapPage(options) {
		if(options.isMain) {
			window.location.href = "./murica.html";
		} else {
			window.location.href = "./index.html";
		}
	}

}
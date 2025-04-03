module.exports = {
	apps: [
		{
			name: 'md-app',
			script: './bin/www',
			watch: true,
			exec_mode: 'fork', // Or 'cluster' if you're running in a multi-core environment
			instances: 1, // You can adjust the number of instances as needed
			env: {
				NODE_ENV: 'development',
			},
			env_production: {
				NODE_ENV: 'production',
			},
		},
	],
};
N=100
PLOT_T=bar_chart([number_of_divisors(n) for n in range(1,N+1)])
PLOT_T.save("t_plot.pdf")
PLOT_T_BAR=bar_chart([1/n*sum([number_of_divisors(j) for j in range(1,n+1)]) for n in range(1,N+1)])
PLOT_T_BAR.save("t_bar_plot.pdf")

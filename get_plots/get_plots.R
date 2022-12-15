## load libs

library(ggplot2)
library(dplyr)
library(data.table)
library(ggpubr)
library(wesanderson)
library(RColorBrewer)

## get data

source('CharityHospital_R_2022-11-02_1448.R')

## function

get_one_var_hist <- function(data, var, out_dir, xtitle,
                             pall_values, height, width,
                             ytitle='Количество человек',
                             ratio=0.2) {
  if (!dir.exists(out_dir)) {
    dir.create(out_dir, recursive = T)
  }
  df <- data.frame(table(data[[var]])) %>%
    magrittr::set_colnames(c('condition', 'counts'))
  y_lim <- plyr::round_any(max(df$counts) + 100, 100)
  plot_title <- sprintf('%s (%d/%d -- есть информация, %d/%d -- NAs)',
                        xtitle, sum(df$counts), nrow(data),
                        sum(is.na(data[[var]])), nrow(data))
  plt <- ggplot(df, aes(x = reorder(condition, counts), y = counts, fill=condition))+
    geom_bar(stat = 'identity')+
    geom_text(aes(label = counts), vjust = 0, size=4.5)+
    theme_bw(base_size=11)+
    ylab(ytitle)+
    xlab(xtitle)+
    ggtitle(plot_title)+
    ylim(0, y_lim)+
    scale_fill_manual(values=pall_values)+
    theme(legend.text.align = 0, legend.key.size=unit(0.2, "in"),
          legend.text = element_text(size=13),
          aspect.ratio = ratio, legend.position = 'right',
          legend.title = element_blank(),
          plot.margin=grid::unit(c(0,0,0,0), "in"),
          axis.text.x = element_text(angle = 45, hjust=1),
          plot.title = element_text(hjust = 0.5))
  ggsave(plt, filename = sprintf('%s/%s_bar_plot.png', out_dir, var),
         height = height, width = width)
  plt
}

## documents

a <- get_one_var_hist(data=data, var='sn_status.factor', out_dir='plots',
                      xtitle='Наличие СНИЛСа', pall_values=wes_palettes$Rushmore1,
                      height = 4, width = 9)
b <- get_one_var_hist(data=data, var='id_status.factor', out_dir='plots',
                      xtitle='Наличие паспорта', pall_values=wes_palettes$Rushmore1,
                      height = 4, width = 9)
c <- get_one_var_hist(data=data, var='oms_status.factor', out_dir='plots',
                      xtitle='Наличие ОМС', pall_values=wes_palettes$Rushmore1,
                      height = 4, width = 9)

abc_stacked <- ggpubr::ggarrange(a, b, c, nrow = 3, common.legend = T)
ggsave(abc_stacked, filename = 'plots/sn_id_oms_stacked.png', height = 10, width = 11)


## gender

get_one_var_hist(data=data, var='gender.factor', out_dir='plots',
                 xtitle='Пол', pall_values=wes_palettes$BottleRocket2,
                 height = 2.5, width = 6)

## citizenship

get_one_var_hist(data=data %>%
                   filter(`citizen.factor` != 0) %>%
                   mutate(`citizen.factor` = as.character(`citizen.factor`)),
                 var='citizen.factor', out_dir='plots',
                 xtitle='Гражданство', pall_values=c(wes_palettes$Rushmore1, wes_palettes$GrandBudapest1,
                                                     wes_palettes$GrandBudapest2),
                 height = 6, width = 8, ratio=0.8)

## education


get_one_var_hist(data, var='education.factor', out_dir='plots',
                 xtitle='Образование', pall_values=c(wes_palettes$Rushmore1, wes_palettes$GrandBudapest1),
                 height = 3.5, width = 8, ratio=0.5)

## family

get_one_var_hist(data,
                 var='family.factor', out_dir='plots',
                 xtitle='Семейное положение', pall_values=c(wes_palettes$Rushmore1),
                 height = 6, width = 8, ratio=0.8)

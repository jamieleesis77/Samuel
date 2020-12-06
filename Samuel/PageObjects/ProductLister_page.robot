#PageObjects
*** Settings ***
Resource    ../Config.robot

*** Keywords ***


*** Variables ***
#LINKS


#BUTTONS


#FIELDS
${sortby_field}            css:select[name='sortBy']
${price_filter_field}      css:option[value='price_f desc']
${page_2_link}             css:a[href="?pg=2"]

#ERRORS
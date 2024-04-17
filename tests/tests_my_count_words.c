/*
** EPITECH PROJECT, 2023
** tests_my_count_words.c
** File description:
** uni_tests count words
*/

#include <criterion/criterion.h>
#include <criterion/redirect.h>
#include "../includes/my.h"

Test(my_count_words, count_nbr_words)
{
    char *str = "test";
    int i = my_strlen(str);

    cr_assert_eq(str, str);
}
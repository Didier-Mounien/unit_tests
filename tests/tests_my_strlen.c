/*
** EPITECH PROJECT, 2023
** tests_my_strlen.c
** File description:
** uni_tests strlen
*/

#include <criterion/criterion.h>
#include <criterion/redirect.h>
#include "../includes/my.h"

Test(my_strlen, count_nbr_char)
{
    int i = my_strlen("test");

    cr_assert_eq(i, 4);
}
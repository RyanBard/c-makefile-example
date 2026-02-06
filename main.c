#include <stdio.h>
#include <assert.h>
#include "foo.h"
#include "bar.h"
#include "util.h"

int main() {
	assert(foo(FOO_MIN) > 1);
	assert(bar(BAR_MIN) > 2);
	return 0;
}

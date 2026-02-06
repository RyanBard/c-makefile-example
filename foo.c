#include <assert.h>
#include "foo.h"
#include "util.h"

int foo(int x) {
	assert(x >= FOO_MIN);
	return 100;
}

#include <assert.h>
#include "bar.h"
#include "util.h"

int bar(int x) {
	assert(x >= BAR_MIN);
	return 200;
}

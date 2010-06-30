CXX			:=	g++
COMMON		:=	common.cpp endian.cpp wii.cpp dol.cpp functions.cpp
CXXFLAGS	:=	-O2 -Wall
PROGRAMS	:=	check_fwrite create_jump find_debug_functions mega_compare mega_info_creator

DEPSDIR		:=	build
DEPENDS		:=	$(foreach file,$(PROGRAMS),$(DEPSDIR)/$(file).d)

all: $(PROGRAMS)

$(PROGRAMS): $(COMMON)
	@mkdir -p $(DEPSDIR)
	$(CXX) -MMD -MP -MF $(DEPSDIR)/$@.d $(CXXFLAGS) $(COMMON) $@.cpp -o $@

clean:
	@echo Cleaning binaries...
	@rm -rf $(PROGRAMS) $(DEPSDIR)

-include $(DEPENDS)

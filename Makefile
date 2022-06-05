#The Target Binary Program
TARGET      := my_project

#Compilers
CC          := g++ -std=c++20 
CFLAGS      := -Wno-psabi -O3
DGEN        := doxygen
SRCEXT      := cc

# The YASE library
YASE_DIR    := /Users/eric/Code/yase

# Directories where include files are
INCDIR      := -I $(YASE_DIR)/include \
			   -I $(YASE_DIR)/third-party/json/include \
			   -I $(YASE_DIR)/third-party/json/include/nlohmann \
			   -I $(YASE_DIR)/third-party/AudioFile

# Libraries for executables
LIBDIR      := -L $(YASE_DIR)/lib
LIBS        := -lpthread -lyase -lportaudio -lrtmidi

#The Directories, Source, Includes, Objects, Binary and Resources
SRCDIR      := .
BUILDDIR    := ./build
TARGETDIR   := ./bin

#Flags, Libraries and Includes
INC         := $(INCDIR) 

#Files
SOURCES     := $(wildcard $(SRCDIR)/*.cc) 
OBJECTS     := $(patsubst %.cc, $(BUILDDIR)/%.o, $(notdir $(SOURCES)))

#Defauilt Make
all: directories $(TARGETDIR)/$(TARGET) 

# Directors
directories:
	mkdir -p bin
	mkdir -p build

#Clean only Objects
clean:
	@$(RM) -rf $(BUILDDIR)/*.o $(TARGETDIR)/$(TARGET)

#Link
$(TARGETDIR)/$(TARGET): $(OBJECTS)
	$(CC) $(LIBDIR) $(LIBS) $(OBJECTS) -o $@
	
#Compile
$(BUILDDIR)/%.o: $(SRCDIR)/%.$(SRCEXT) 
	$(CC) $(CFLAGS) $(INC) -c -fPIC -o $@ $<

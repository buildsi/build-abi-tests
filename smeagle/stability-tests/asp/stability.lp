%=============================================================================
% A and B are two instances of the same library. Can B replace A?
%=============================================================================

% Set A (the original library) and B (the one we want to replace it with)
isA(Symbol, Type, Register, Direction) :- 

    % We don't really care about the variable name
    abi_typelocation("/opt/spack/opt/spack/linux-ubuntu18.04-x86_64/gcc-7.5.0/mathclient-1.0.0-eztzlw3my5mrzohcujj3qamrznq2kraf/lib/libmath.so", Symbol, _, Type, Register, Direction).

% Mark an abi type location as being a part of B
isB(Symbol, Type, Register, Direction) :- 
    abi_typelocation("/opt/spack/opt/spack/linux-ubuntu18.04-x86_64/gcc-7.5.0/mathclient-2.0.0-hvlamaz4jdwsmi5gds2pmzaa3um3frnm/lib/libmath.so", Symbol, _, Type, Register, Direction).

% These might be useful
is_symbol(Symbol) :- abi_typelocation(_, Symbol, _, _, _, _).
is_register(Register) :- abi_typelocation(_, _, _, _, Register, _).
is_direction(Direction) :- abi_typelocation(_, _, _, _, _, Direction).
is_type(Type) :- abi_typelocation(_, _, _, Type, _, _).


% Let Exported(BinSet) be a set of interface/type/locations triples exported by a set of binaries
% Let Imported(BinSet) be a set of interface/type/location triples imported by some binary
% Mark symbols as exported or imported for each library
exported_A(Symbol, Type, Register) :- 
    isA(Symbol, Type, Register, "export").

imported_A(Symbol, Type, Register) :- 
    isA(Symbol, Type, Register, "import").

exported_B(Symbol, Type, Register) :- 
    isB(Symbol, Type, Register, "export").

imported_B(Symbol, Type, Register) :- 
    isB(Symbol, Type, Register, "import").


% Create reduced versions that account for each additional variable
% These might not be useful, not sure what direction I'm going in
exported_A(Symbol, Type) :- exported_A(Symbol, Type, _).
exported_B(Symbol, Type) :- exported_B(Symbol, Type, _).
imported_A(Symbol, Type) :- imported_A(Symbol, Type, _).
imported_B(Symbol, Type) :- imported_B(Symbol, Type, _).

exported_A(Symbol) :- exported_A(Symbol, _, _).
exported_B(Symbol) :- exported_B(Symbol, _, _).
imported_A(Symbol) :- imported_A(Symbol, _, _).
imported_B(Symbol) :- imported_B(Symbol, _, _).

% Narrow down to same types
% this is unsafe
%exported_A_and_B(SymbolA, SymbolB) :-

%    exported_A(SymbolA).
%    exported_B(SymbolB).
%    SymbolA == SymbolB.

% Let Dependencies(Bin) be the set of binaries that binary Bin depends on. 
% We don't have this represented yet?

% - We’ll say B can safely replace A if: Exported({A}) is a subset of Exported({B})
% This also says that there can't be any symbols in A not in B
% THIS IS ALSO UNSAFE. 
% matched_imports(Symbol, Type, Register) :-

    % The symbol is exported for A
%    imported_A(Symbol, Type, Register).
    
    % And it's exported for B
%    imported_B(Symbol, Type, Register).
           
% -and- Imported({B}) is a subset of Imported({A}) U Exported(Dependencies(B))

#show isA/4.
#show isB/4.
#show is_symbol/1.
#show is_register/1.
#show is_type/1.
#show is_direction/1.
#show exported_A/3.
#show exported_B/3.
#show imported_A/3.
#show imported_B/3.
%#show imported/4.
%#show missing_symbol/3.

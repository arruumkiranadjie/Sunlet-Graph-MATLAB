%%PRAKTIKUM STRUKTUR ALJABAR
%%KELOMPOK : 
%%1. Arruum Pratistha Kiranadjie (081911233063)
%%2. Tannisa Puspita Kusuma      (081911233060)
%%3. Winitasya Alya Islami       (081911233056) 
%%4. Mestika Nafis Husna         (081911233077)
 
disp("===============================================================================================")
disp("===============================================================================================")
disp("MENENTUKAN CHROMATIC NUMBER, RANK ADJACENCY MATRIX, DAN RANK INCIDENCE MATRIX DARI SUNLET GRAPH")
disp("                       SUNLET GRAPH ATAU OPERASI KORONA CN⊙K1                                 ")
disp("===============================================================================================")
disp("===============================================================================================")

n=input("Masukkan Banyaknya Titik Pada Graf Sunlet CnK1 = ") 
disp("Masukkan Pilihan Matriks Yang Akan Ditampilkan :")
disp("1. Adjacency Matrix, Rank Adjacency Matrix, dan Chromatic Number")
disp("2. Incidence Matrix, Rank Incidence Matrix, dan Chromatic Number")
tampil=input("1 / 2 = ")
 
if n>=3
    switch tampil
        case 1
            %MATRIKS ADJACENCY
            A=zeros(n); 
            for i=1:n-1  
                A(i,i+1)=1; 
                A(i+1,i)=1; 
            end
            A(1,n)=1;
            A(n,1)=1;
        
            x=n;
            for i=1:n-2
                S=[A eye(x);eye(x) zeros(x)];
            end
            
            %RANK ADJACENCY MATRIX
            rankAdjacency=2*n;
            
            %CHROMATIC NUMBER
            if mod(n,2)==0
                chromatic=2;
            else 
                chromatic=3;
            end 
            
            %%MENAMPILKAN OUTPUT
            %MATRIKS ADJACENCY
            disp("MATRIKS ADJACENCY DARI GRAF SUNLET DENGAN")
            disp(n)
            disp("TITIK ADALAH")
            disp(S)
            
            %RANK ADJACENCY MATRIX
            disp("RANK DARI MATRIKS ADJACENCY ADALAH =")
            disp(rankAdjacency)
            
            %CHROMATIC NUMBER
            disp("CHROMATIC NUMBER DARI SUNLET GRAPH ADALAH =")
            disp(chromatic)
        
        case 2
        %MATRIKS INCIDENCE
        A=zeros(n,n);
        for i=1:n-1
            A(i,i)=1;
            A(i+1,i)=1;
        end
        A(1,n)=1;
        A(n,n)=1; 
        
        x=n;
        for i=1:n-2 
            S=[A eye(x);zeros(x) eye(x)];
        end 

        %RANK INCIDENCE MATRIX
        rankIncidence=2*n;

        %%CHROMATIC NUMBER
        if mod(n,2)==0
            chromatic=2;
        else 
            chromatic=3;
        end 

        %%MENAMPILKAN OUTPUT
        %MATRIKS INCIDENCE
        disp("MATRIKS INCIDENCE DARI GRAF SUNLET DENGAN")
        disp(n)
        disp("TITIK ADALAH")
        disp(S)

        %RANK INCIDENCE MATRIX
        disp("RANK DARI MATRIX INCIDENCE ADALAH =")
        disp(rankIncidence)

        %%CHROMATIC NUMBER
        disp("CHROMATIC NUMBER DARI SUNLET GRAPH ADALAH =")
        disp(chromatic)

    otherwise 
        disp("Pilihan Yang Diinputkan Salah!")
    end

else 
    disp("Banyaknya Titik (n) Pada Sunlet Graph Minimal 3")
end

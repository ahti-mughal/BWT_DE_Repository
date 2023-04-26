for i in range(2,21):
    with open (f"C:\CWQ PYTHON COURCE\chapter 9\Tables\Multiplication_Table_of_{i}.txt","w") as f:
        for j in  range(1,11):
            f.write(f"{i} x {j} = {i*j}")
            if j!=10:
                f.write("\n")
                
               
module value_sorter (
    input  [3:0] A, B, C,
    output reg [3:0] X, // 最大值
    output reg [3:0] Y, // 最小值
    output reg [3:0] Z  // 中間值
);

    always @(*) begin
        // 1. 找最大值 X
        if (A >= B && A >= C)      X = A;
        else if (B >= A && B >= C) X = B;
        else                       X = C;

        // 2. 找最小值 Y
        if (A <= B && A <= C)      Y = A;
        else if (B <= A && B <= C) Y = B;
        else                       Y = C;

        // 3. 找中間值 Z 
        // 判斷邏輯：若該值介於另外兩者之間，則為中間值
        if ((A >= B && A <= C) || (A <= B && A >= C))      Z = A;
        else if ((B >= A && B <= C) || (B <= A && B >= C)) Z = B;
        else                                               Z = C;
    end

endmodule
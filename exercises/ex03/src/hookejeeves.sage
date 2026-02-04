f = lambda x: (x[0] + x[1])^2 + sin(x[0] + 2)^2 + x[1]^2 + 10

def hooke_jeeves(f, x0, lam, xi, alpha):
    k = 0
    xk = vector(RDF, x0)
    y0 = xk
    n = len(xk)

    while lam > xi:
        y = y0
        for i in range(n):
            ei = vector(RDF, n)
            ei[i] = 1.0
            if f(y + lam * ei) < f(y):
                y = y + lam * ei
            elif f(y - lam * ei) < f(y):
                y = y - lam * ei
        if f(y) < f(xk):
            xk_new = y
            y0 = xk_new + alpha * (xk_new - xk)
        else:
            lam = lam / 2.0
            xk_new = xk
            y0 = xk
        xk = xk_new
        k += 1
    return xk

print(hooke_jeeves(f, vector(RDF, [0, 0]), lam=1.0, xi=1e-6, alpha=1e-6))


if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="note-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(0.3 cm);

pair A, B, C, D, E, F;

A = (0,0);
B = (18 - 2*sqrt(3), 0);
C = (18 - 2*sqrt(3), 6*sqrt(3));
D = (0, 6*sqrt(3));
E = extension(C, C + dir(60), A, B);
F = extension(C, C + dir(30), A, D);

draw(A--B--C--D--cycle);
draw(C--E);
draw(C--F);

label("$A$", A, SW);
label("$B$", B, SE);
label("$C$", C, NE);
label("$D$", D, NW);
label("$E$", E, S);
label("$F$", F, W);
label("$2$", (A + F)/2, W);
label("$6$", (B + E)/2, S);

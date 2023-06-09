function grafic_modulul(R,L,f)

             figure('Name','Grafic câștig',...
               'Units','normalized',...
             'NumberTitle','off',...
             'Position',[0.1 0.1 0.8 0.8],...
             'Color','#4DBEEE');

w=logspace(1,9,f); % vectorul w = f apartinand [10^min, 10^max]
ftai=R./(2.*pi.*L);  % frecventa de taiere
f1= w/(2*pi);      % frecventa
numar=w.*1i.*L;
numit=R+w.*1i.*L;
modulHjw=abs(numar./numit); % modul de H

Hj=20*log10(modulHjw);       



subplot('Position', [0.1 0.33 0.85 0.50],...
     'FontAngle', 'italic');
semilogx(f1,Hj,'g',ftai,-3,'*','LineWidth',3.5); 
                                              

grid on;
hold on; 
title('Caracteristica de câștig dB',...
     'FontAngle', 'italic');
xlabel('f[ Hz ]',...
 'FontAngle', 'italic');
ylabel('Câștig dB',...
     'FontAngle', 'italic');


              

  uicontrol('Style','pushbutton',...
            'Units','normalized',...
            'BackgroundColor','w',... 
            'Position',[0.2 0.15 0.2 0.05],...
            'FontAngle', 'italic',...
            'String','Revenire la interfață',...
            'Fontsize',9,...
            'Callback','close;filtru_stat'); % buton de revenire la interfata


  uicontrol('Style','pushbutton',...
            'Units','normalized',...
            'BackgroundColor','w',... 
            'Position',[0.6 0.15 0.2 0.05],...
            'FontAngle', 'italic',...
            'String','Ieșire din proiect',...
            'Fontsize',9,...
            'Callback','close'); % buton de iesire completa

end
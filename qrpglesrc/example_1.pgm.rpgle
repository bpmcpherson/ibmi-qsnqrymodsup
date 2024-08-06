**FREE

ctl-opt dftactgrp(*no);

/include 'qrpgleref/qsnqrymodsup.rpgleinc'

dcl-s wideModeSupported ind inz('0');
dcl-s myText char(52) inz;

// Create a local data structured based on our error template
dcl-ds apiError likeds(errc0100_t) inz(*likeds);

// Test to see if we can use a wider screen
qsn_queryDisplayModeSupport(QSN_DISPLAY_MODE_4
                            :wideModeSupported
                            :*omit
                            :apiError
                            );

if (apiError.exceptionId <> '');
  myText = 'Error ' + apiError.exceptionId;
  dsply myText;
  return;
endif;                            

select;
  when (wideModeSupported = '1');
    myText = 'Wide Mode Supported.';
  other;
    myText = 'Wide Mode NOT Supported.';
endsl;

dsply myText;

return;
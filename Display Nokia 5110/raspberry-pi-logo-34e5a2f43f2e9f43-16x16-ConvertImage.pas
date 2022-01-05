unit rasplogo;

interface

const
 rasplogo: array[] of byte = (

#if LV_COLOR_DEPTH == 1 || LV_COLOR_DEPTH == 8
{Pixel format: Red: 3 bit, Green: 3 bit, Blue: 2 bit}

  $ff, $ff, $b6, $6d, $6d, $6d, $6d, $db, $db, $6d, $6d, $6d, $6d, $db, $ff, $ff,
  $ff, $ff, $6d, $ff, $ff, $ff, $ff, $92, $6d, $ff, $ff, $ff, $ff, $92, $ff, $ff,
  $ff, $ff, $92, $db, $ff, $db, $db, $92, $92, $db, $db, $ff, $db, $92, $ff, $ff,
  $ff, $ff, $ff, $6d, $ff, $ff, $b6, $00, $00, $92, $ff, $ff, $92, $ff, $ff, $ff,
  $ff, $ff, $ff, $ff, $24, $92, $24, $6d, $6d, $24, $92, $49, $ff, $ff, $ff, $ff,
  $ff, $ff, $ff, $6d, $ff, $b6, $92, $ff, $ff, $92, $db, $db, $6d, $ff, $ff, $ff,
  $ff, $ff, $ff, $6d, $92, $49, $6d, $49, $6d, $92, $49, $b6, $49, $ff, $ff, $ff,
  $ff, $ff, $92, $24, $6d, $ff, $ff, $92, $92, $ff, $ff, $6d, $49, $92, $ff, $ff,
  $ff, $db, $92, $92, $db, $ff, $ff, $92, $92, $ff, $ff, $db, $db, $6d, $ff, $ff,
  $ff, $b6, $b6, $92, $92, $ff, $ff, $24, $24, $ff, $ff, $6d, $b6, $92, $b6, $ff,
  $ff, $ff, $6d, $49, $00, $24, $6d, $ff, $ff, $6d, $24, $24, $6d, $49, $ff, $ff,
  $ff, $ff, $92, $db, $ff, $24, $db, $ff, $ff, $db, $49, $ff, $b6, $6d, $ff, $ff,
  $ff, $ff, $db, $92, $ff, $db, $6d, $ff, $ff, $92, $db, $ff, $92, $db, $ff, $ff,
  $ff, $ff, $ff, $92, $b6, $b6, $00, $49, $6d, $00, $db, $b6, $6d, $ff, $ff, $ff,
  $ff, $ff, $ff, $ff, $b6, $24, $92, $ff, $ff, $92, $00, $b6, $ff, $ff, $ff, $ff,
  $ff, $ff, $ff, $ff, $ff, $ff, $92, $6d, $6d, $6d, $ff, $ff, $ff, $ff, $ff, $ff,

#elif LV_COLOR_DEPTH == 16
{Pixel format: Red: 5 bit, Green: 6 bit, Blue: 5 bit}

  $ff, $ff, $ff, $ff, $f7, $bd, $cf, $7b, $ef, $7b, $ae, $73, $8e, $73, $ba, $d6, $ba, $d6, $ae, $73, $ae, $73, $cf, $7b, $cf, $7b, $38, $c6, $ff, $ff, $ff, $ff,
  $ff, $ff, $ff, $ff, $8e, $73, $df, $ff, $5d, $ef, $ff, $ff, $df, $ff, $10, $84, $ef, $7b, $df, $ff, $ff, $ff, $5d, $ef, $ff, $ff, $10, $84, $ff, $ff, $ff, $ff,
  $ff, $ff, $ff, $ff, $92, $94, $79, $ce, $ff, $ff, $38, $c6, $59, $ce, $f3, $9c, $51, $8c, $79, $ce, $18, $c6, $ff, $ff, $fb, $de, $f3, $9c, $ff, $ff, $ff, $ff,
  $ff, $ff, $ff, $ff, $be, $f7, $4d, $6b, $9e, $f7, $ff, $ff, $b6, $b5, $61, $08, $41, $08, $f3, $9c, $ff, $ff, $df, $ff, $10, $84, $be, $f7, $ff, $ff, $ff, $ff,
  $ff, $ff, $ff, $ff, $ff, $ff, $1c, $e7, $e7, $39, $f3, $9c, $65, $29, $6d, $6b, $6d, $6b, $24, $21, $51, $8c, $28, $42, $3c, $e7, $ff, $ff, $ff, $ff, $ff, $ff,
  $ff, $ff, $ff, $ff, $ff, $ff, $ae, $73, $3c, $e7, $14, $a5, $71, $8c, $ff, $ff, $ff, $ff, $d3, $9c, $18, $c6, $38, $c6, $4d, $6b, $ff, $ff, $ff, $ff, $ff, $ff,
  $ff, $ff, $ff, $ff, $9e, $f7, $ef, $7b, $30, $84, $08, $42, $4d, $6b, $eb, $5a, $2c, $63, $10, $84, $eb, $5a, $34, $a5, $cb, $5a, $df, $ff, $ff, $ff, $ff, $ff,
  $ff, $ff, $ff, $ff, $51, $8c, $86, $31, $0c, $63, $ff, $ff, $ff, $ff, $51, $8c, $71, $8c, $ff, $ff, $ff, $ff, $8e, $73, $28, $42, $71, $8c, $ff, $ff, $ff, $ff,
  $ff, $ff, $fb, $de, $b2, $94, $d3, $9c, $38, $c6, $ff, $ff, $ff, $ff, $f3, $9c, $b2, $94, $ff, $ff, $ff, $ff, $18, $c6, $38, $c6, $8e, $73, $1c, $e7, $ff, $ff,
  $ff, $ff, $f7, $bd, $f7, $bd, $10, $84, $92, $94, $ff, $ff, $7d, $ef, $c7, $39, $65, $29, $1c, $e7, $ff, $ff, $ef, $7b, $34, $a5, $71, $8c, $f7, $bd, $ff, $ff,
  $ff, $ff, $be, $f7, $6d, $6b, $08, $42, $82, $10, $a6, $31, $2c, $63, $be, $f7, $df, $ff, $2c, $63, $04, $21, $c7, $39, $ae, $73, $28, $42, $9e, $f7, $ff, $ff,
  $ff, $ff, $ff, $ff, $30, $84, $18, $c6, $5d, $ef, $86, $31, $18, $c6, $ff, $ff, $ff, $ff, $9a, $d6, $8a, $52, $ff, $ff, $d7, $bd, $ef, $7b, $ff, $ff, $ff, $ff,
  $ff, $ff, $ff, $ff, $ba, $d6, $f3, $9c, $ff, $ff, $18, $c6, $cf, $7b, $ff, $ff, $ff, $ff, $30, $84, $fb, $de, $ff, $ff, $f3, $9c, $79, $ce, $ff, $ff, $ff, $ff,
  $ff, $ff, $ff, $ff, $ff, $ff, $10, $84, $96, $b5, $b6, $b5, $00, $00, $cb, $5a, $0c, $63, $20, $00, $ba, $d6, $b6, $b5, $ae, $73, $ff, $ff, $ff, $ff, $ff, $ff,
  $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $96, $b5, $04, $21, $f3, $9c, $ff, $ff, $ff, $ff, $d3, $9c, $c3, $18, $75, $ad, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff,
  $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $df, $ff, $30, $84, $8e, $73, $8e, $73, $ef, $7b, $df, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff,

#elif LV_COLOR_DEPTH == 24
{Pixel format: Fix $FF: 8 bit, Red: 8 bit, Green: 8 bit, Blue: 8 bit}

  $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $bf, $bf, $bf, $ff, $79, $79, $79, $ff, $7e, $7e, $7e, $ff, $75, $75, $75, $ff, $72, $72, $72, $ff, $d4, $d4, $d4, $ff, $d5, $d5, $d5, $ff, $74, $74, $74, $ff, $77, $77, $77, $ff, $78, $78, $78, $ff, $7b, $7b, $7b, $ff, $c4, $c4, $c4, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff,
  $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $71, $71, $71, $ff, $fb, $fb, $fb, $ff, $ea, $ea, $ea, $ff, $fd, $fd, $fd, $ff, $f9, $f9, $f9, $ff, $80, $80, $80, $ff, $7e, $7e, $7e, $ff, $fb, $fb, $fb, $ff, $fe, $fe, $fe, $ff, $ea, $ea, $ea, $ff, $fe, $fe, $fe, $ff, $80, $80, $80, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff,
  $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $93, $93, $93, $ff, $cc, $cc, $cc, $ff, $fe, $fe, $fe, $ff, $c5, $c5, $c5, $ff, $c8, $c8, $c8, $ff, $9f, $9f, $9f, $ff, $8b, $8b, $8b, $ff, $cc, $cc, $cc, $ff, $c3, $c3, $c3, $ff, $fd, $fd, $fd, $ff, $df, $df, $df, $ff, $9e, $9e, $9e, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff,
  $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f5, $f5, $f5, $ff, $6a, $6a, $6a, $ff, $f3, $f3, $f3, $ff, $ff, $ff, $ff, $ff, $b5, $b5, $b5, $ff, $0e, $0e, $0e, $ff, $08, $08, $08, $ff, $9f, $9f, $9f, $ff, $ff, $ff, $ff, $ff, $fa, $fa, $fa, $ff, $81, $81, $81, $ff, $f7, $f7, $f7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff,
  $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $e1, $e1, $e1, $ff, $3c, $3c, $3c, $ff, $9e, $9e, $9e, $ff, $2d, $2d, $2d, $ff, $6d, $6d, $6d, $ff, $6d, $6d, $6d, $ff, $26, $26, $26, $ff, $8a, $8a, $8a, $ff, $47, $47, $47, $ff, $e4, $e4, $e4, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff,
  $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $75, $75, $75, $ff, $e5, $e5, $e5, $ff, $a0, $a0, $a0, $ff, $8e, $8e, $8e, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $9b, $9b, $9b, $ff, $c3, $c3, $c3, $ff, $c4, $c4, $c4, $ff, $69, $69, $69, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff,
  $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f3, $f3, $f3, $ff, $7f, $7f, $7f, $ff, $84, $84, $84, $ff, $42, $42, $42, $ff, $68, $68, $68, $ff, $5d, $5d, $5d, $ff, $67, $67, $67, $ff, $83, $83, $83, $ff, $5d, $5d, $5d, $ff, $a5, $a5, $a5, $ff, $58, $58, $58, $ff, $fa, $fa, $fa, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff,
  $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $88, $88, $88, $ff, $32, $32, $32, $ff, $62, $62, $62, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $88, $88, $88, $ff, $8c, $8c, $8c, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $70, $70, $70, $ff, $47, $47, $47, $ff, $8d, $8d, $8d, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff,
  $ff, $ff, $ff, $ff, $df, $df, $df, $ff, $96, $96, $96, $ff, $9b, $9b, $9b, $ff, $c5, $c5, $c5, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $9e, $9e, $9e, $ff, $94, $94, $94, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $c2, $c2, $c2, $ff, $c4, $c4, $c4, $ff, $72, $72, $72, $ff, $e0, $e0, $e0, $ff, $ff, $ff, $ff, $ff,
  $ff, $ff, $ff, $ff, $bf, $bf, $bf, $ff, $bd, $bd, $bd, $ff, $82, $82, $82, $ff, $92, $92, $92, $ff, $ff, $ff, $ff, $ff, $ec, $ec, $ec, $ff, $39, $39, $39, $ff, $2e, $2e, $2e, $ff, $e2, $e2, $e2, $ff, $ff, $ff, $ff, $ff, $7d, $7d, $7d, $ff, $a7, $a7, $a7, $ff, $8f, $8f, $8f, $ff, $bd, $bd, $bd, $ff, $ff, $ff, $ff, $ff,
  $ff, $ff, $ff, $ff, $f5, $f5, $f5, $ff, $6e, $6e, $6e, $ff, $42, $42, $42, $ff, $10, $10, $10, $ff, $34, $34, $34, $ff, $66, $66, $66, $ff, $f7, $f7, $f7, $ff, $f8, $f8, $f8, $ff, $67, $67, $67, $ff, $20, $20, $20, $ff, $39, $39, $39, $ff, $77, $77, $77, $ff, $44, $44, $44, $ff, $f3, $f3, $f3, $ff, $ff, $ff, $ff, $ff,
  $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $86, $86, $86, $ff, $c2, $c2, $c2, $ff, $ea, $ea, $ea, $ff, $31, $31, $31, $ff, $c3, $c3, $c3, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $d3, $d3, $d3, $ff, $50, $50, $50, $ff, $fc, $fc, $fc, $ff, $bb, $bb, $bb, $ff, $7e, $7e, $7e, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff,
  $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $d5, $d5, $d5, $ff, $9c, $9c, $9c, $ff, $ff, $ff, $ff, $ff, $c1, $c1, $c1, $ff, $78, $78, $78, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $85, $85, $85, $ff, $df, $df, $df, $ff, $ff, $ff, $ff, $ff, $9c, $9c, $9c, $ff, $cd, $cd, $cd, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff,
  $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $80, $80, $80, $ff, $b1, $b1, $b1, $ff, $b4, $b4, $b4, $ff, $02, $02, $02, $ff, $5a, $5a, $5a, $ff, $61, $61, $61, $ff, $06, $06, $06, $ff, $d5, $d5, $d5, $ff, $b4, $b4, $b4, $ff, $77, $77, $77, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff,
  $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $b3, $b3, $b3, $ff, $20, $20, $20, $ff, $9f, $9f, $9f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $9a, $9a, $9a, $ff, $1a, $1a, $1a, $ff, $ad, $ad, $ad, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff,
  $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $fa, $fa, $fa, $ff, $84, $84, $84, $ff, $73, $73, $73, $ff, $70, $70, $70, $ff, $7e, $7e, $7e, $ff, $f8, $f8, $f8, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff,

    #else
    #error " image :invalid color depth (check LV_COLOR_DEPTH in lv_conf.h)"
    #endif
    );

const lv_img_t  = (
  .header.w = 16,           {Image width in pixel count}
  .header.h = 16,           {Image height in pixel count}
  .header.alpha_byte = 0,       {No alpha byte}
  .header.chroma_keyed = 0, {No chroma keying}
  .header.format = LV_IMG_FORMAT_INTERNAL_RAW,  {It's a variable compiled into the code}
  .pixel_map = _pixel_map   {Pointer the array of image pixels.}
);

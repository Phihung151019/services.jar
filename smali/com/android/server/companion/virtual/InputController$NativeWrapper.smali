.class public Lcom/android/server/companion/virtual/InputController$NativeWrapper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final closeUinput(J)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeCloseUinput(J)V

    return-void
.end method

.method public final openUinputDpad(Ljava/lang/String;IILjava/lang/String;)J
    .locals 0

    invoke-static {p2, p3, p1, p4}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeOpenUinputDpad(IILjava/lang/String;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final openUinputKeyboard(Ljava/lang/String;IILjava/lang/String;)J
    .locals 0

    invoke-static {p2, p3, p1, p4}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeOpenUinputKeyboard(IILjava/lang/String;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final openUinputMouse(Ljava/lang/String;IILjava/lang/String;)J
    .locals 0

    invoke-static {p2, p3, p1, p4}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeOpenUinputMouse(IILjava/lang/String;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final openUinputRotaryEncoder(Ljava/lang/String;IILjava/lang/String;)J
    .locals 0

    invoke-static {p2, p3, p1, p4}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeOpenUinputRotaryEncoder(IILjava/lang/String;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final openUinputStylus(Ljava/lang/String;IILjava/lang/String;II)J
    .locals 0

    move p0, p3

    move-object p3, p1

    move p1, p0

    move p0, p2

    move p2, p5

    move p5, p6

    invoke-static/range {p0 .. p5}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeOpenUinputStylus(IIILjava/lang/String;Ljava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public final openUinputTouchscreen(Ljava/lang/String;IILjava/lang/String;II)J
    .locals 0

    move p0, p3

    move-object p3, p1

    move p1, p0

    move p0, p2

    move p2, p5

    move p5, p6

    invoke-static/range {p0 .. p5}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeOpenUinputTouchscreen(IIILjava/lang/String;Ljava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public final writeButtonEvent(JIIJ)Z
    .locals 0

    move p0, p3

    move-wide p2, p1

    move p1, p4

    move-wide p4, p5

    invoke-static/range {p0 .. p5}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteButtonEvent(IIJJ)Z

    move-result p0

    return p0
.end method

.method public final writeDpadKeyEvent(JIIJ)Z
    .locals 0

    move p0, p3

    move-wide p2, p1

    move p1, p4

    move-wide p4, p5

    invoke-static/range {p0 .. p5}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteDpadKeyEvent(IIJJ)Z

    move-result p0

    return p0
.end method

.method public final writeKeyEvent(JIIJ)Z
    .locals 0

    move p0, p3

    move-wide p2, p1

    move p1, p4

    move-wide p4, p5

    invoke-static/range {p0 .. p5}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteKeyEvent(IIJJ)Z

    move-result p0

    return p0
.end method

.method public final writeRelativeEvent(JFFJ)Z
    .locals 0

    invoke-static/range {p1 .. p6}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteRelativeEvent(JFFJ)Z

    move-result p0

    return p0
.end method

.method public final writeRotaryEncoderScrollEvent(JFJ)Z
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteRotaryEncoderScrollEvent(JFJ)Z

    move-result p0

    return p0
.end method

.method public final writeScrollEvent(JFFJ)Z
    .locals 0

    invoke-static/range {p1 .. p6}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteScrollEvent(JFFJ)Z

    move-result p0

    return p0
.end method

.method public final writeStylusButtonEvent(JIIJ)Z
    .locals 0

    move p0, p3

    move-wide p2, p1

    move p1, p4

    move-wide p4, p5

    invoke-static/range {p0 .. p5}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteStylusButtonEvent(IIJJ)Z

    move-result p0

    return p0
.end method

.method public final writeStylusMotionEvent(JIIIIIIIJ)Z
    .locals 0

    invoke-static/range {p1 .. p11}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteStylusMotionEvent(JIIIIIIIJ)Z

    move-result p0

    return p0
.end method

.method public final writeTouchEvent(JIIIFFFFJ)Z
    .locals 0

    invoke-static/range {p1 .. p11}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteTouchEvent(JIIIFFFFJ)Z

    move-result p0

    return p0
.end method

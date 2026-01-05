.class public final Lcom/android/server/input/TouchpadFingerState;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mOrientation:F

.field public final mPositionX:F

.field public final mPositionY:F

.field public final mPressure:F

.field public final mTouchMajor:F

.field public final mTouchMinor:F

.field public final mTrackingId:I

.field public final mWidthMajor:F

.field public final mWidthMinor:F


# direct methods
.method public constructor <init>(FFFFFFFFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/input/TouchpadFingerState;->mTouchMajor:F

    iput p2, p0, Lcom/android/server/input/TouchpadFingerState;->mTouchMinor:F

    iput p3, p0, Lcom/android/server/input/TouchpadFingerState;->mWidthMajor:F

    iput p4, p0, Lcom/android/server/input/TouchpadFingerState;->mWidthMinor:F

    iput p5, p0, Lcom/android/server/input/TouchpadFingerState;->mPressure:F

    iput p6, p0, Lcom/android/server/input/TouchpadFingerState;->mOrientation:F

    iput p7, p0, Lcom/android/server/input/TouchpadFingerState;->mPositionX:F

    iput p8, p0, Lcom/android/server/input/TouchpadFingerState;->mPositionY:F

    iput p9, p0, Lcom/android/server/input/TouchpadFingerState;->mTrackingId:I

    return-void
.end method


# virtual methods
.method public final __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public getOrientation()F
    .locals 0

    iget p0, p0, Lcom/android/server/input/TouchpadFingerState;->mOrientation:F

    return p0
.end method

.method public getPositionX()F
    .locals 0

    iget p0, p0, Lcom/android/server/input/TouchpadFingerState;->mPositionX:F

    return p0
.end method

.method public getPositionY()F
    .locals 0

    iget p0, p0, Lcom/android/server/input/TouchpadFingerState;->mPositionY:F

    return p0
.end method

.method public getPressure()F
    .locals 0

    iget p0, p0, Lcom/android/server/input/TouchpadFingerState;->mPressure:F

    return p0
.end method

.method public getTouchMajor()F
    .locals 0

    iget p0, p0, Lcom/android/server/input/TouchpadFingerState;->mTouchMajor:F

    return p0
.end method

.method public getTouchMinor()F
    .locals 0

    iget p0, p0, Lcom/android/server/input/TouchpadFingerState;->mTouchMinor:F

    return p0
.end method

.method public getTrackingId()I
    .locals 0

    iget p0, p0, Lcom/android/server/input/TouchpadFingerState;->mTrackingId:I

    return p0
.end method

.method public getWidthMajor()F
    .locals 0

    iget p0, p0, Lcom/android/server/input/TouchpadFingerState;->mWidthMajor:F

    return p0
.end method

.method public getWidthMinor()F
    .locals 0

    iget p0, p0, Lcom/android/server/input/TouchpadFingerState;->mWidthMinor:F

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "TouchpadFingerState { touchMajor = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/input/TouchpadFingerState;->mTouchMajor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", touchMinor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/TouchpadFingerState;->mTouchMinor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", widthMajor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/TouchpadFingerState;->mWidthMajor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", widthMinor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/TouchpadFingerState;->mWidthMinor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", pressure = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/TouchpadFingerState;->mPressure:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", orientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/TouchpadFingerState;->mOrientation:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", positionX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/TouchpadFingerState;->mPositionX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", positionY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/TouchpadFingerState;->mPositionY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", trackingId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/input/TouchpadFingerState;->mTrackingId:I

    const-string v1, " }"

    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

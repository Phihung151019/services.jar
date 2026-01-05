.class public final Landroid/hardware/tv/mediaquality/PictureParameter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/mediaquality/PictureParameter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public _tag:I

.field public _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/hardware/tv/mediaquality/PictureParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p2, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-void
.end method

.method public static _tagString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "unknown field: "

    invoke-static {p0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string/jumbo p0, "pictureQualityEventType"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "activeProfile"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "colorTunerLuminanceFlesh"

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "colorTunerLuminanceYellow"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "colorTunerLuminanceMagenta"

    return-object p0

    :pswitch_5
    const-string/jumbo p0, "colorTunerLuminanceCyan"

    return-object p0

    :pswitch_6
    const-string/jumbo p0, "colorTunerLuminanceBlue"

    return-object p0

    :pswitch_7
    const-string/jumbo p0, "colorTunerLuminanceGreen"

    return-object p0

    :pswitch_8
    const-string/jumbo p0, "colorTunerLuminanceRed"

    return-object p0

    :pswitch_9
    const-string/jumbo p0, "colorTunerSaturationFlesh"

    return-object p0

    :pswitch_a
    const-string/jumbo p0, "colorTunerSaturationYellow"

    return-object p0

    :pswitch_b
    const-string/jumbo p0, "colorTunerSaturationMagenta"

    return-object p0

    :pswitch_c
    const-string/jumbo p0, "colorTunerSaturationCyan"

    return-object p0

    :pswitch_d
    const-string/jumbo p0, "colorTunerSaturationBlue"

    return-object p0

    :pswitch_e
    const-string/jumbo p0, "colorTunerSaturationGreen"

    return-object p0

    :pswitch_f
    const-string/jumbo p0, "colorTunerSaturationRed"

    return-object p0

    :pswitch_10
    const-string/jumbo p0, "colorTunerHueFlesh"

    return-object p0

    :pswitch_11
    const-string/jumbo p0, "colorTunerHueYellow"

    return-object p0

    :pswitch_12
    const-string/jumbo p0, "colorTunerHueMagenta"

    return-object p0

    :pswitch_13
    const-string/jumbo p0, "colorTunerHueCyan"

    return-object p0

    :pswitch_14
    const-string/jumbo p0, "colorTunerHueBlue"

    return-object p0

    :pswitch_15
    const-string/jumbo p0, "colorTunerHueGreen"

    return-object p0

    :pswitch_16
    const-string/jumbo p0, "colorTunerHueRed"

    return-object p0

    :pswitch_17
    const-string/jumbo p0, "colorTunerSwitch"

    return-object p0

    :pswitch_18
    const-string/jumbo p0, "osdContrast"

    return-object p0

    :pswitch_19
    const-string/jumbo p0, "osdSaturation"

    return-object p0

    :pswitch_1a
    const-string/jumbo p0, "osdHue"

    return-object p0

    :pswitch_1b
    const-string/jumbo p0, "osdBlueOffset"

    return-object p0

    :pswitch_1c
    const-string/jumbo p0, "osdGreenOffset"

    return-object p0

    :pswitch_1d
    const-string/jumbo p0, "osdRedOffset"

    return-object p0

    :pswitch_1e
    const-string/jumbo p0, "osdBlueGain"

    return-object p0

    :pswitch_1f
    const-string/jumbo p0, "osdGreenGain"

    return-object p0

    :pswitch_20
    const-string/jumbo p0, "osdRedGain"

    return-object p0

    :pswitch_21
    const-string/jumbo p0, "LdMode"

    return-object p0

    :pswitch_22
    const-string/jumbo p0, "lowBlueLight"

    return-object p0

    :pswitch_23
    const-string/jumbo p0, "elevenPointBlue"

    return-object p0

    :pswitch_24
    const-string/jumbo p0, "elevenPointGreen"

    return-object p0

    :pswitch_25
    const-string/jumbo p0, "elevenPointRed"

    return-object p0

    :pswitch_26
    const-string/jumbo p0, "colorTemperatureBlueOffset"

    return-object p0

    :pswitch_27
    const-string/jumbo p0, "colorTemperatureGreenOffset"

    return-object p0

    :pswitch_28
    const-string/jumbo p0, "colorTemperatureRedOffset"

    return-object p0

    :pswitch_29
    const-string/jumbo p0, "colorTemperatureBlueGain"

    return-object p0

    :pswitch_2a
    const-string/jumbo p0, "colorTemperatureGreenGain"

    return-object p0

    :pswitch_2b
    const-string/jumbo p0, "colorTemperatureRedGain"

    return-object p0

    :pswitch_2c
    const-string/jumbo p0, "gamma"

    return-object p0

    :pswitch_2d
    const-string/jumbo p0, "panelInitMaxLuminceValid"

    return-object p0

    :pswitch_2e
    const-string/jumbo p0, "panelInitMaxLuminceNits"

    return-object p0

    :pswitch_2f
    const-string/jumbo p0, "colorSpace"

    return-object p0

    :pswitch_30
    const-string/jumbo p0, "hdmiRgbRange"

    return-object p0

    :pswitch_31
    const-string/jumbo p0, "cvrr"

    return-object p0

    :pswitch_32
    const-string/jumbo p0, "vrr"

    return-object p0

    :pswitch_33
    const-string/jumbo p0, "lowLatency"

    return-object p0

    :pswitch_34
    const-string/jumbo p0, "pcMode"

    return-object p0

    :pswitch_35
    const-string/jumbo p0, "gamutMapping"

    return-object p0

    :pswitch_36
    const-string/jumbo p0, "levelRange"

    return-object p0

    :pswitch_37
    const-string/jumbo p0, "autoSuperResolutionEnabled"

    return-object p0

    :pswitch_38
    const-string/jumbo p0, "autoPictureQualityEnabled"

    return-object p0

    :pswitch_39
    const-string/jumbo p0, "globeDimming"

    return-object p0

    :pswitch_3a
    const-string/jumbo p0, "colorTemperature"

    return-object p0

    :pswitch_3b
    const-string/jumbo p0, "colorTune"

    return-object p0

    :pswitch_3c
    const-string/jumbo p0, "blueStretch"

    return-object p0

    :pswitch_3d
    const-string/jumbo p0, "filmMode"

    return-object p0

    :pswitch_3e
    const-string/jumbo p0, "dynamicLumaControl"

    return-object p0

    :pswitch_3f
    const-string/jumbo p0, "deContour"

    return-object p0

    :pswitch_40
    const-string/jumbo p0, "fleshTone"

    return-object p0

    :pswitch_41
    const-string/jumbo p0, "mpegNoiseReduction"

    return-object p0

    :pswitch_42
    const-string/jumbo p0, "noiseReduction"

    return-object p0

    :pswitch_43
    const-string/jumbo p0, "colorTunerBlueGain"

    return-object p0

    :pswitch_44
    const-string/jumbo p0, "colorTunerGreenGain"

    return-object p0

    :pswitch_45
    const-string/jumbo p0, "colorTunerRedGain"

    return-object p0

    :pswitch_46
    const-string/jumbo p0, "colorTunerBlueOffset"

    return-object p0

    :pswitch_47
    const-string/jumbo p0, "colorTunerGreenOffset"

    return-object p0

    :pswitch_48
    const-string/jumbo p0, "colorTunerRedOffset"

    return-object p0

    :pswitch_49
    const-string/jumbo p0, "colorTunerHue"

    return-object p0

    :pswitch_4a
    const-string/jumbo p0, "colorTunerSaturation"

    return-object p0

    :pswitch_4b
    const-string/jumbo p0, "colorTunerBrightness"

    return-object p0

    :pswitch_4c
    const-string/jumbo p0, "hue"

    return-object p0

    :pswitch_4d
    const-string/jumbo p0, "saturation"

    return-object p0

    :pswitch_4e
    const-string/jumbo p0, "sharpness"

    return-object p0

    :pswitch_4f
    const-string/jumbo p0, "contrast"

    return-object p0

    :pswitch_50
    const-string/jumbo p0, "brightness"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final _assertTag(I)V
    .locals 3

    iget v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "bad access: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_tagString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    invoke-static {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_tagString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is available."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getStability()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    const/16 v1, 0xb

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 p2, 0x50

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :pswitch_1
    const/16 p2, 0x4f

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    :pswitch_2
    const/16 p2, 0x4e

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_3
    const/16 p2, 0x4d

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_4
    const/16 p2, 0x4c

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_5
    const/16 p2, 0x4b

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_6
    const/16 p2, 0x4a

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_7
    const/16 p2, 0x49

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_8
    const/16 p2, 0x48

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_9
    const/16 p2, 0x47

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_a
    const/16 p2, 0x46

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_b
    const/16 p2, 0x45

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_c
    const/16 p2, 0x44

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_d
    const/16 p2, 0x43

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_e
    const/16 p2, 0x42

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_f
    const/16 p2, 0x41

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_10
    const/16 p2, 0x40

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_11
    const/16 p2, 0x3f

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_12
    const/16 p2, 0x3e

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_13
    const/16 p2, 0x3d

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_14
    const/16 p2, 0x3c

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_15
    const/16 p2, 0x3b

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_16
    const/16 p2, 0x3a

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_17
    const/16 p2, 0x39

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    :pswitch_18
    const/16 p2, 0x38

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_19
    const/16 p2, 0x37

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_1a
    const/16 p2, 0x36

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_1b
    const/16 p2, 0x35

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_1c
    const/16 p2, 0x34

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_1d
    const/16 p2, 0x33

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_1e
    const/16 p2, 0x32

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_1f
    const/16 p2, 0x31

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_20
    const/16 p2, 0x30

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_21
    const/16 p2, 0x2f

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :pswitch_22
    const/16 p2, 0x2e

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :pswitch_23
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, [I

    filled-new-array {v1}, [I

    move-result-object v0

    invoke-virtual {p1, p0, p2, v0}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    return-void

    :pswitch_24
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, [I

    filled-new-array {v1}, [I

    move-result-object v0

    invoke-virtual {p1, p0, p2, v0}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    return-void

    :pswitch_25
    const/16 v0, 0x2b

    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, [I

    filled-new-array {v1}, [I

    move-result-object v0

    invoke-virtual {p1, p0, p2, v0}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    return-void

    :pswitch_26
    const/16 p2, 0x2a

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_27
    const/16 p2, 0x29

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_28
    const/16 p2, 0x28

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_29
    const/16 p2, 0x27

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_2a
    const/16 p2, 0x26

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_2b
    const/16 p2, 0x25

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_2c
    const/16 p2, 0x24

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :pswitch_2d
    const/16 p2, 0x23

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    :pswitch_2e
    const/16 p2, 0x22

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_2f
    const/16 p2, 0x21

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :pswitch_30
    const/16 p2, 0x20

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :pswitch_31
    const/16 p2, 0x1f

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    :pswitch_32
    const/16 p2, 0x1e

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    :pswitch_33
    const/16 p2, 0x1d

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    :pswitch_34
    const/16 p2, 0x1c

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    :pswitch_35
    const/16 p2, 0x1b

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    :pswitch_36
    const/16 p2, 0x1a

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :pswitch_37
    const/16 p2, 0x19

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    :pswitch_38
    const/16 p2, 0x18

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    :pswitch_39
    const/16 p2, 0x17

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    :pswitch_3a
    const/16 p2, 0x16

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :pswitch_3b
    const/16 p2, 0x15

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    :pswitch_3c
    const/16 p2, 0x14

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    :pswitch_3d
    const/16 p2, 0x13

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    :pswitch_3e
    const/16 p2, 0x12

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :pswitch_3f
    const/16 p2, 0x11

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :pswitch_40
    const/16 p2, 0x10

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :pswitch_41
    const/16 p2, 0xf

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :pswitch_42
    const/16 p2, 0xe

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :pswitch_43
    const/16 p2, 0xd

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_44
    const/16 p2, 0xc

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_45
    invoke-virtual {p0, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_46
    const/16 p2, 0xa

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_47
    const/16 p2, 0x9

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_48
    const/16 p2, 0x8

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_49
    const/4 p2, 0x7

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_4a
    const/4 p2, 0x6

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_4b
    const/4 p2, 0x5

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_4c
    const/4 p2, 0x4

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_4d
    const/4 p2, 0x3

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_4e
    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_4f
    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_50
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

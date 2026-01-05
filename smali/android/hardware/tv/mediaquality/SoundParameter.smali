.class public final Landroid/hardware/tv/mediaquality/SoundParameter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/mediaquality/SoundParameter;",
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

    new-instance v0, Landroid/hardware/tv/mediaquality/SoundParameter$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/hardware/tv/mediaquality/SoundParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_tag:I

    iput-object p2, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

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
    const-string/jumbo p0, "soundStyle"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "activeProfile"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "digitalOutputDelayMs"

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "digitalOutput"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "dtsVirtualX"

    return-object p0

    :pswitch_5
    const-string/jumbo p0, "dolbyDialogueEnhancer"

    return-object p0

    :pswitch_6
    const-string/jumbo p0, "dolbyAudioProcessing"

    return-object p0

    :pswitch_7
    const-string/jumbo p0, "dtsDrc"

    return-object p0

    :pswitch_8
    const-string/jumbo p0, "downmixMode"

    return-object p0

    :pswitch_9
    const-string/jumbo p0, "autoVolumeControl"

    return-object p0

    :pswitch_a
    const-string/jumbo p0, "enhancedAudioReturnChannelEnabled"

    return-object p0

    :pswitch_b
    const-string/jumbo p0, "speakersDelayMs"

    return-object p0

    :pswitch_c
    const-string/jumbo p0, "speakersEnabled"

    return-object p0

    :pswitch_d
    const-string/jumbo p0, "equalizerDetail"

    return-object p0

    :pswitch_e
    const-string/jumbo p0, "surroundSoundEnabled"

    return-object p0

    :pswitch_f
    const-string/jumbo p0, "treble"

    return-object p0

    :pswitch_10
    const-string/jumbo p0, "bass"

    return-object p0

    :pswitch_11
    const-string/jumbo p0, "balance"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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

    iget v0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_tag:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "bad access: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/hardware/tv/mediaquality/SoundParameter;->_tagString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_tag:I

    invoke-static {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_tagString(I)Ljava/lang/String;

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
    .locals 3

    iget v0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_tag:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDtsVirtualX()Landroid/hardware/tv/mediaquality/DtsVirtualX;

    return v2

    :cond_1
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDolbyAudioProcessing()Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;

    return v2

    :cond_2
    invoke-virtual {p0, v1}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/tv/mediaquality/EqualizerDetail;

    return v2
.end method

.method public final getDolbyAudioProcessing()Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;
    .locals 1

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;

    return-object p0
.end method

.method public final getDtsVirtualX()Landroid/hardware/tv/mediaquality/DtsVirtualX;
    .locals 1

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/tv/mediaquality/DtsVirtualX;

    return-object p0
.end method

.method public final getStability()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_tag:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 p2, 0x11

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :pswitch_1
    const/16 p2, 0x10

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    :pswitch_2
    const/16 p2, 0xf

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_3
    const/16 p2, 0xe

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDtsVirtualX()Landroid/hardware/tv/mediaquality/DtsVirtualX;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void

    :pswitch_5
    const/16 p2, 0xc

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :pswitch_6
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDolbyAudioProcessing()Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void

    :pswitch_7
    const/16 p2, 0xa

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    :pswitch_8
    const/16 p2, 0x9

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :pswitch_9
    const/16 p2, 0x8

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    :pswitch_a
    const/4 p2, 0x7

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    :pswitch_b
    const/4 p2, 0x6

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_c
    const/4 p2, 0x5

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    :pswitch_d
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/tv/mediaquality/EqualizerDetail;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void

    :pswitch_e
    const/4 p2, 0x3

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    :pswitch_f
    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_10
    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :pswitch_11
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

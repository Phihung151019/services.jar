.class public final Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;
.super Lcom/android/server/hdmi/HdmiEarcLocalDevice;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final earcStatusNames:[Ljava/lang/String;


# instance fields
.field public mReportCapsHandler:Landroid/os/Handler;

.field public mReportCapsRunnable:Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx$ReportCapsRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "HDMI_EARC_STATUS_ARC_PENDING"

    const-string v1, "HDMI_EARC_STATUS_EARC_CONNECTED"

    const-string v2, "HDMI_EARC_STATUS_IDLE"

    const-string v3, "HDMI_EARC_STATUS_EARC_PENDING"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;->earcStatusNames:[Ljava/lang/String;

    return-void
.end method

.method public static parseCapabilities([B)Ljava/util/List;
    .locals 14

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const-string v2, "HdmiEarcLocalDeviceTx"

    const/4 v3, 0x4

    if-ge v1, v3, :cond_0

    const-string/jumbo p0, "Raw eARC capabilities array doesn\u00b4t contain any blocks."

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const/4 v1, 0x2

    aget-byte v4, p0, v1

    array-length v5, p0

    if-ge v5, v4, :cond_1

    const-string/jumbo p0, "Raw eARC capabilities array is shorter than the reported payload length."

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    const/4 v5, 0x3

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_8

    aget-byte v7, p0, v6

    and-int/lit16 v8, v7, 0xe0

    shr-int/lit8 v8, v8, 0x5

    and-int/lit8 v7, v7, 0x1f

    if-nez v7, :cond_2

    goto :goto_3

    :cond_2
    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v8, v9, :cond_5

    if-eq v8, v3, :cond_4

    const/4 v9, 0x7

    if-eq v8, v9, :cond_3

    const-string/jumbo v9, "This tagcode was not handled: "

    invoke-static {v8, v9, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    add-int/lit8 v8, v6, 0x1

    aget-byte v8, p0, v8

    const/16 v9, 0x11

    if-ne v8, v9, :cond_7

    add-int/lit8 v8, v7, 0x1

    new-array v9, v8, [B

    invoke-static {p0, v6, v9, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v8, Landroid/media/AudioDescriptor;

    invoke-direct {v8, v5, v10, v9}, Landroid/media/AudioDescriptor;-><init>(II[B)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    add-int/lit8 v8, v7, 0x1

    new-array v9, v8, [B

    invoke-static {p0, v6, v9, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v8, Landroid/media/AudioDescriptor;

    invoke-direct {v8, v1, v10, v9}, Landroid/media/AudioDescriptor;-><init>(II[B)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    rem-int/lit8 v8, v7, 0x3

    if-eqz v8, :cond_6

    const-string v9, "Invalid length of SAD block: expected a factor of 3 but got "

    invoke-static {v8, v9, v2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    new-array v8, v7, [B

    add-int/lit8 v11, v6, 0x1

    invoke-static {p0, v11, v8, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v11, v10

    :goto_1
    if-ge v11, v7, :cond_7

    new-instance v12, Landroid/media/AudioDescriptor;

    add-int/lit8 v13, v11, 0x3

    invoke-static {v8, v11, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    invoke-direct {v12, v9, v10, v11}, Landroid/media/AudioDescriptor;-><init>(II[B)V

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v11, v13

    goto :goto_1

    :cond_7
    :goto_2
    add-int/lit8 v7, v7, 0x1

    add-int/2addr v6, v7

    goto :goto_0

    :cond_8
    :goto_3
    return-object v0
.end method

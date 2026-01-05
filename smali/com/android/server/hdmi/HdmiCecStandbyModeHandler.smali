.class public final Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAborterIncorrectMode:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;

.field public final mAborterRefused:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;

.field public final mAborterUnrecognizedOpcode:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;

.field public final mAutoOnHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;

.field public final mBypasser:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Bypasser;

.field public final mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Bypasser;

.field public final mCecMessageHandlers:Landroid/util/SparseArray;

.field public final mDefaultHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

.field public final mDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

.field public final mService:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mCecMessageHandlers:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;-><init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;I)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAborterUnrecognizedOpcode:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;

    new-instance v2, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;-><init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;I)V

    iput-object v2, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAborterIncorrectMode:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;

    new-instance v3, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;

    const/4 v4, 0x4

    invoke-direct {v3, p0, v4}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;-><init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;I)V

    iput-object v3, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAborterRefused:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;

    new-instance v3, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;-><init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;I)V

    iput-object v3, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAutoOnHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;

    new-instance v5, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Bypasser;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Bypasser;-><init>(I)V

    iput-object v5, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBypasser:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Bypasser;

    new-instance v6, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Bypasser;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Bypasser;-><init>(I)V

    iput-object v6, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Bypasser;

    new-instance v7, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;

    const/4 v8, 0x1

    invoke-direct {v7, p0, v8}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;-><init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;I)V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    const/16 p1, 0x44

    invoke-virtual {p0, p1, v7}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    iget p1, p2, Lcom/android/server/hdmi/HdmiLocalDevice;->mDeviceType:I

    if-nez p1, :cond_0

    const/16 p1, 0x82

    invoke-virtual {p0, p1, v6}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 p1, 0x85

    invoke-virtual {p0, p1, v6}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 p1, 0x80

    invoke-virtual {p0, p1, v6}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 p1, 0x81

    invoke-virtual {p0, p1, v6}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 p1, 0x86

    invoke-virtual {p0, p1, v6}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 p1, 0x36

    invoke-virtual {p0, p1, v6}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 p1, 0x32

    invoke-virtual {p0, p1, v6}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 p1, 0x45

    invoke-virtual {p0, p1, v6}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    invoke-virtual {p0, v1, v6}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 p1, 0x9d

    invoke-virtual {p0, p1, v6}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 p1, 0x7e

    invoke-virtual {p0, p1, v6}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 p1, 0x7a

    invoke-virtual {p0, p1, v6}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 p1, 0x83

    invoke-virtual {p0, p1, v5}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 p1, 0x91

    invoke-virtual {p0, p1, v5}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 p1, 0x84

    invoke-virtual {p0, p1, v5}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 p1, 0x8c

    invoke-virtual {p0, p1, v5}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 p1, 0x46

    invoke-virtual {p0, p1, v5}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 p1, 0x47

    invoke-virtual {p0, p1, v5}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 p1, 0x87

    invoke-virtual {p0, p1, v5}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 p1, 0x90

    invoke-virtual {p0, p1, v5}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 p1, 0xa5

    invoke-virtual {p0, p1, v5}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 p1, 0x8f

    invoke-virtual {p0, p1, v5}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 p1, 0xff

    invoke-virtual {p0, p1, v5}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 p1, 0x9f

    invoke-virtual {p0, p1, v5}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 p1, 0xa0

    invoke-virtual {p0, p1, v2}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 p1, 0x72

    invoke-virtual {p0, p1, v2}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    invoke-virtual {p0, v4, v3}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 p1, 0xd

    invoke-virtual {p0, p1, v3}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 p1, 0xa

    invoke-virtual {p0, p1, v6}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 p1, 0xf

    invoke-virtual {p0, p1, v2}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 p1, 0xc0

    invoke-virtual {p0, p1, v2}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 p1, 0xc5

    invoke-virtual {p0, p1, v2}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mDefaultHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    return-void

    :cond_0
    iput-object v5, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mDefaultHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    return-void
.end method


# virtual methods
.method public final addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mCecMessageHandlers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

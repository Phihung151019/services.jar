.class public Lcom/android/server/contentprotection/RemoteContentProtectionService;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/service/contentcapture/IContentProtectionService;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field private final mAutoDisconnectTimeoutMs:J

.field private final mComponentName:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/contentprotection/RemoteContentProtectionService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;IZJ)V
    .locals 8

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.service.contentcapture.ContentProtectionService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    if-eqz p4, :cond_0

    const/high16 p4, 0x400000

    :goto_0
    move v5, p4

    goto :goto_1

    :cond_0
    const/4 p4, 0x0

    goto :goto_0

    :goto_1
    new-instance v7, Lcom/android/server/contentprotection/RemoteContentProtectionService$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    move-object v2, p0

    move-object v3, p1

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    iput-object p2, v2, Lcom/android/server/contentprotection/RemoteContentProtectionService;->mComponentName:Landroid/content/ComponentName;

    iput-wide p5, v2, Lcom/android/server/contentprotection/RemoteContentProtectionService;->mAutoDisconnectTimeoutMs:J

    return-void
.end method


# virtual methods
.method public final getAutoDisconnectTimeoutMs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/contentprotection/RemoteContentProtectionService;->mAutoDisconnectTimeoutMs:J

    return-wide v0
.end method

.method public final onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .locals 1

    check-cast p1, Landroid/service/contentcapture/IContentProtectionService;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Connection status for: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/contentprotection/RemoteContentProtectionService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " changed to: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string/jumbo p0, "connected"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "disconnected"

    :goto_0
    const-string/jumbo p2, "RemoteContentProtectionService"

    invoke-static {p1, p0, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

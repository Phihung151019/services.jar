.class public final Landroid/os/epic/EpicChromeDetector;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native CheckChromeBrowser(Ljava/lang/String;)Z
.end method

.method public native Initialize()V
.end method

.method public LinkLibrary()Z
    .locals 0

    :try_start_0
    const-string/jumbo p0, "epicsvc"

    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public native RemoveUid(Ljava/lang/String;)V
.end method

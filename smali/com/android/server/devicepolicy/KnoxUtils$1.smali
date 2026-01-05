.class public final Lcom/android/server/devicepolicy/KnoxUtils$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$personaService:Lcom/android/server/pm/PersonaManagerService;

.field public final synthetic val$timeMs:J

.field public final synthetic val$userHandle:I


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/KnoxUtils$1;->val$personaService:Lcom/android/server/pm/PersonaManagerService;

    iput-wide p2, p0, Lcom/android/server/devicepolicy/KnoxUtils$1;->val$timeMs:J

    iput p4, p0, Lcom/android/server/devicepolicy/KnoxUtils$1;->val$userHandle:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const-string v0, "DevicePolicyManager::KnoxUtils"

    const-string/jumbo v1, "notify persona to may log analytics"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/devicepolicy/KnoxUtils$1;->val$personaService:Lcom/android/server/pm/PersonaManagerService;

    iget-wide v1, p0, Lcom/android/server/devicepolicy/KnoxUtils$1;->val$timeMs:J

    iget p0, p0, Lcom/android/server/devicepolicy/KnoxUtils$1;->val$userHandle:I

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    const/4 v4, -0x1

    const-string/jumbo v5, "knox_screen_off_timeout"

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v5, v4, p0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    :goto_0
    int-to-long v3, v3

    goto :goto_1

    :cond_0
    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v5, v4, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    goto :goto_0

    :goto_1
    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-lez v7, :cond_1

    move v7, v9

    goto :goto_2

    :cond_1
    move v7, v8

    :goto_2
    if-eqz v7, :cond_2

    cmp-long v10, v3, v1

    if-gtz v10, :cond_5

    :cond_2
    if-eqz v7, :cond_3

    cmp-long v10, v3, v5

    if-lez v10, :cond_5

    :cond_3
    if-eqz v7, :cond_4

    cmp-long v5, v3, v5

    if-lez v5, :cond_4

    cmp-long v5, v3, v1

    if-gtz v5, :cond_4

    iget-boolean v5, v0, Lcom/android/server/pm/PersonaManagerService;->mKALockscreenTimeoutAdminFlag:Z

    if-nez v5, :cond_5

    :cond_4
    if-nez v7, :cond_7

    iget-boolean v5, v0, Lcom/android/server/pm/PersonaManagerService;->mKALockscreenTimeoutAdminFlag:Z

    if-eqz v5, :cond_7

    :cond_5
    iget-object v5, v0, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    iget-object v5, v5, Lcom/android/server/knox/KnoxAnalyticsContainer;->analyticsHandler:Lcom/android/server/knox/KnoxAnalyticsContainer$AnalyticsHandler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, p0, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v5, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    if-eqz v7, :cond_6

    cmp-long p0, v3, v1

    if-lez p0, :cond_6

    iput-boolean v9, v0, Lcom/android/server/pm/PersonaManagerService;->mKALockscreenTimeoutAdminFlag:Z

    return-void

    :cond_6
    iput-boolean v8, v0, Lcom/android/server/pm/PersonaManagerService;->mKALockscreenTimeoutAdminFlag:Z

    :cond_7
    return-void
.end method

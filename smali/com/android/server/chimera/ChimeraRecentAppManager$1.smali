.class public final Lcom/android/server/chimera/ChimeraRecentAppManager$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/chimera/SystemRepository$ChimeraProcessObserver;


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/ChimeraRecentAppManager;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/ChimeraRecentAppManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/chimera/ChimeraRecentAppManager$1;->this$0:Lcom/android/server/chimera/ChimeraRecentAppManager;

    return-void
.end method


# virtual methods
.method public final onForegroundActivitiesChanged(IIZI[Ljava/lang/String;Z)V
    .locals 0

    if-eqz p3, :cond_0

    if-nez p6, :cond_0

    iget-object p0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager$1;->this$0:Lcom/android/server/chimera/ChimeraRecentAppManager;

    iget-object p0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

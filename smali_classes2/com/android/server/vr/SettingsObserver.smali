.class public final Lcom/android/server/vr/SettingsObserver;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mContentObserver:Lcom/android/server/vr/SettingsObserver$2;

.field public final mSettingsListeners:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/net/Uri;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/SettingsObserver;->mSettingsListeners:Ljava/util/Set;

    new-instance v0, Lcom/android/server/vr/SettingsObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/vr/SettingsObserver$1;-><init>(Lcom/android/server/vr/SettingsObserver;)V

    new-instance v0, Lcom/android/server/vr/SettingsObserver$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/server/vr/SettingsObserver$2;-><init>(Lcom/android/server/vr/SettingsObserver;Landroid/os/Handler;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/server/vr/SettingsObserver;->mContentObserver:Lcom/android/server/vr/SettingsObserver$2;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, -0x1

    invoke-virtual {p0, p3, p1, v0, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

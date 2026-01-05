.class public final Lcom/android/server/wm/ActivityTaskManagerInternal$PreBindInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final compatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field public final configuration:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>(Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$PreBindInfo;->compatibilityInfo:Landroid/content/res/CompatibilityInfo;

    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$PreBindInfo;->configuration:Landroid/content/res/Configuration;

    return-void
.end method

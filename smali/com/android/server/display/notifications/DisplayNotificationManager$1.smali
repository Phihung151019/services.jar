.class public final Lcom/android/server/display/notifications/DisplayNotificationManager$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/display/notifications/DisplayNotificationManager$Injector;


# instance fields
.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$flags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public final synthetic val$statsService:Lcom/android/server/display/ExternalDisplayStatsService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/ExternalDisplayStatsService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/notifications/DisplayNotificationManager$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/display/notifications/DisplayNotificationManager$1;->val$flags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iput-object p3, p0, Lcom/android/server/display/notifications/DisplayNotificationManager$1;->val$statsService:Lcom/android/server/display/ExternalDisplayStatsService;

    return-void
.end method

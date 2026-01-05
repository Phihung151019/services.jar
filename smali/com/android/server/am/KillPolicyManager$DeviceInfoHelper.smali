.class public abstract Lcom/android/server/am/KillPolicyManager$DeviceInfoHelper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final URI_ISSUE_TRACKER:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "content://issuetracker_provider/user_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/KillPolicyManager$DeviceInfoHelper;->URI_ISSUE_TRACKER:Landroid/net/Uri;

    return-void
.end method

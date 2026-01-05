.class public final Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public adminUid:I

.field public flags:I

.field public flowTypeForProfile:I

.field public intervalValueForProfile:I

.field public jsonString:Ljava/lang/String;

.field public opUserId:I

.field public packageName:Ljava/lang/String;

.field public packageSignature:Ljava/lang/String;

.field public final profileName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

.field public userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    iput-object p2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->profileName:Ljava/lang/String;

    return-void
.end method

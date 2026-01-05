.class public final Lcom/android/server/dreams/DreamUiEventLoggerImpl;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mLoggableDreamPrefixes:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/dreams/DreamUiEventLoggerImpl;->mLoggableDreamPrefixes:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final log(Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/server/dreams/DreamUiEventLogger$DreamUiEventEnum;->getId()I

    move-result p1

    if-gtz p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamUiEventLoggerImpl;->mLoggableDreamPrefixes:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v2, v2, v1

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo p2, "other"

    :goto_1
    const/16 p0, 0x1c1

    invoke-static {p0, v0, p1, v0, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIILjava/lang/String;)V

    return-void
.end method

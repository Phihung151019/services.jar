.class public final synthetic Lcom/android/server/notification/NotificationClassifier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Predicate;


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategory;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "result : ID = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p1, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategory;->categoryId:J

    const-string/jumbo v2, "NotificationClassifier"

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    iget-wide p0, p1, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategory;->categoryId:J

    const-wide/16 v0, 0x1

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

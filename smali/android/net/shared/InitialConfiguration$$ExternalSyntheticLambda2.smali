.class public final synthetic Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p2, p0, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ljava/util/function/Predicate;

    invoke-static {p0, p1}, Landroid/net/shared/InitialConfiguration;->$r8$lambda$-X6K-ILFjKgXxX_05B2mmIHvhrU(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p0, Landroid/net/IpPrefix;

    check-cast p1, Landroid/net/RouteInfo;

    invoke-static {p0, p1}, Landroid/net/shared/InitialConfiguration;->$r8$lambda$5lGZQwr6G8-juwLej8cPw15pvTI(Landroid/net/IpPrefix;Landroid/net/RouteInfo;)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p0, Ljava/net/InetAddress;

    check-cast p1, Landroid/net/IpPrefix;

    invoke-static {p0, p1}, Landroid/net/shared/InitialConfiguration;->$r8$lambda$ywVtbC09SwFWcOHhEoJjbnmuAY8(Ljava/net/InetAddress;Landroid/net/IpPrefix;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

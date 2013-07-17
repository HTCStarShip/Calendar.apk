.class Lcom/htc/calendar/EventInfoActivity$6;
.super Ljava/lang/Object;
.source "EventInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/EventInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/EventInfoActivity;


# direct methods
.method constructor <init>(Lcom/htc/calendar/EventInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1872
    iput-object p1, p0, Lcom/htc/calendar/EventInfoActivity$6;->this$0:Lcom/htc/calendar/EventInfoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1874
    const-string v1, "EventInfoActivity"

    const-string v2, "mClickResponseListener"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    :try_start_0
    iget-object v1, p0, Lcom/htc/calendar/EventInfoActivity$6;->this$0:Lcom/htc/calendar/EventInfoActivity;

    const v2, 0x7f0d00ac

    invoke-virtual {v1, v2}, Lcom/htc/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/calendar/widget/HtcSpinnerEx;

    invoke-virtual {v1}, Lcom/htc/calendar/widget/HtcSpinnerEx;->performClick()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1882
    :goto_0
    return-void

    .line 1879
    :catch_0
    move-exception v0

    .line 1880
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

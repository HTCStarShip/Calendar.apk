.class Lcom/htc/calendar/widget/ComposeTitle$7$1;
.super Ljava/lang/Object;
.source "ComposeTitle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/widget/ComposeTitle$7;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/calendar/widget/ComposeTitle$7;


# direct methods
.method constructor <init>(Lcom/htc/calendar/widget/ComposeTitle$7;)V
    .locals 0
    .parameter

    .prologue
    .line 1539
    iput-object p1, p0, Lcom/htc/calendar/widget/ComposeTitle$7$1;->this$1:Lcom/htc/calendar/widget/ComposeTitle$7;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1542
    const/4 v4, 0x1

    new-array v0, v4, [C

    .line 1543
    .local v0, a:[C
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/16 v4, 0x898

    if-ge v2, v4, :cond_0

    .line 1544
    iget-object v4, p0, Lcom/htc/calendar/widget/ComposeTitle$7$1;->this$1:Lcom/htc/calendar/widget/ComposeTitle$7;

    iget-object v4, v4, Lcom/htc/calendar/widget/ComposeTitle$7;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add people>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/htc/calendar/widget/ComposeTitle;->access$1400(Lcom/htc/calendar/widget/ComposeTitle;Ljava/lang/String;)V

    .line 1545
    const/4 v4, 0x0

    rem-int/lit8 v5, v2, 0x1a

    add-int/lit8 v5, v5, 0x41

    int-to-char v5, v5

    aput-char v5, v0, v4

    .line 1546
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1547
    .local v3, name:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@com.tw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1548
    .local v1, addr:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/calendar/widget/ComposeTitle$7$1;->this$1:Lcom/htc/calendar/widget/ComposeTitle$7;

    iget-object v4, v4, Lcom/htc/calendar/widget/ComposeTitle$7;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    invoke-virtual {v4, v3, v1}, Lcom/htc/calendar/widget/ComposeTitle;->insertContactTest(Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1550
    .end local v1           #addr:Ljava/lang/String;
    .end local v3           #name:Ljava/lang/String;
    :cond_0
    return-void
.end method

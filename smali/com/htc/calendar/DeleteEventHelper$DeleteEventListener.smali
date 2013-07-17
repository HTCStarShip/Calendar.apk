.class Lcom/htc/calendar/DeleteEventHelper$DeleteEventListener;
.super Ljava/lang/Object;
.source "DeleteEventHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/DeleteEventHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeleteEventListener"
.end annotation


# instance fields
.field private mChoosePos:I

.field final synthetic this$0:Lcom/htc/calendar/DeleteEventHelper;


# direct methods
.method constructor <init>(Lcom/htc/calendar/DeleteEventHelper;)V
    .locals 1
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/htc/calendar/DeleteEventHelper$DeleteEventListener;->this$0:Lcom/htc/calendar/DeleteEventHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 228
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/calendar/DeleteEventHelper$DeleteEventListener;->mChoosePos:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 233
    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    .line 235
    :try_start_0
    iget-object v2, p0, Lcom/htc/calendar/DeleteEventHelper$DeleteEventListener;->this$0:Lcom/htc/calendar/DeleteEventHelper;

    #getter for: Lcom/htc/calendar/DeleteEventHelper;->mDelItems:[Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/htc/calendar/DeleteEventHelper;->access$700(Lcom/htc/calendar/DeleteEventHelper;)[Ljava/lang/CharSequence;

    move-result-object v2

    iget v3, p0, Lcom/htc/calendar/DeleteEventHelper$DeleteEventListener;->mChoosePos:I

    aget-object v1, v2, v3

    check-cast v1, Lcom/htc/calendar/ItemValue;

    .line 236
    .local v1, m:Lcom/htc/calendar/ItemValue;
    iget-object v2, p0, Lcom/htc/calendar/DeleteEventHelper$DeleteEventListener;->this$0:Lcom/htc/calendar/DeleteEventHelper;

    invoke-virtual {v1}, Lcom/htc/calendar/ItemValue;->getId()I

    move-result v3

    #calls: Lcom/htc/calendar/DeleteEventHelper;->deleteRepeatingEvent(I)V
    invoke-static {v2, v3}, Lcom/htc/calendar/DeleteEventHelper;->access$800(Lcom/htc/calendar/DeleteEventHelper;I)V

    .line 238
    iget-object v2, p0, Lcom/htc/calendar/DeleteEventHelper$DeleteEventListener;->this$0:Lcom/htc/calendar/DeleteEventHelper;

    #getter for: Lcom/htc/calendar/DeleteEventHelper;->mWhichAccountType:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/calendar/DeleteEventHelper;->access$500(Lcom/htc/calendar/DeleteEventHelper;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/calendar/HtcUtils;->isHTCExchangeEvent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    iget-object v2, p0, Lcom/htc/calendar/DeleteEventHelper$DeleteEventListener;->this$0:Lcom/htc/calendar/DeleteEventHelper;

    #getter for: Lcom/htc/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;
    invoke-static {v2}, Lcom/htc/calendar/DeleteEventHelper;->access$100(Lcom/htc/calendar/DeleteEventHelper;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/calendar/DeleteEventHelper$DeleteEventListener;->this$0:Lcom/htc/calendar/DeleteEventHelper;

    #getter for: Lcom/htc/calendar/DeleteEventHelper;->mWhichAccount:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/calendar/DeleteEventHelper;->access$600(Lcom/htc/calendar/DeleteEventHelper;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/calendar/EASMailUtils;->syncEASCalendar(Landroid/content/Context;Ljava/lang/String;)V

    .line 243
    :cond_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/calendar/DeleteEventHelper$DeleteEventListener$1;

    invoke-direct {v3, p0}, Lcom/htc/calendar/DeleteEventHelper$DeleteEventListener$1;-><init>(Lcom/htc/calendar/DeleteEventHelper$DeleteEventListener;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .end local v1           #m:Lcom/htc/calendar/ItemValue;
    :cond_1
    :goto_0
    return-void

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 255
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v2, -0x2

    if-eq p2, v2, :cond_1

    .line 258
    const-string v2, "DeleteEventHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Click item position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iput p2, p0, Lcom/htc/calendar/DeleteEventHelper$DeleteEventListener;->mChoosePos:I

    goto :goto_0
.end method

.method public setChoosePos(I)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 230
    iput p1, p0, Lcom/htc/calendar/DeleteEventHelper$DeleteEventListener;->mChoosePos:I

    .line 231
    return-void
.end method

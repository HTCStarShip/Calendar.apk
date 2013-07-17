.class Lcom/htc/calendar/AttendeesStatus2$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AttendeesStatus2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/AttendeesStatus2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/AttendeesStatus2;


# direct methods
.method public constructor <init>(Lcom/htc/calendar/AttendeesStatus2;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/htc/calendar/AttendeesStatus2$QueryHandler;->this$0:Lcom/htc/calendar/AttendeesStatus2;

    .line 112
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 113
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 117
    if-nez p3, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/htc/calendar/AttendeesStatus2$QueryHandler;->this$0:Lcom/htc/calendar/AttendeesStatus2;

    invoke-virtual {v1}, Lcom/htc/calendar/AttendeesStatus2;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 123
    .local v0, nCursorCount:I
    const-string v1, "AttendeesStatus_2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nCursorCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v1, p0, Lcom/htc/calendar/AttendeesStatus2$QueryHandler;->this$0:Lcom/htc/calendar/AttendeesStatus2;

    #getter for: Lcom/htc/calendar/AttendeesStatus2;->mListView:Lcom/htc/calendar/AttendeesListView;
    invoke-static {v1}, Lcom/htc/calendar/AttendeesStatus2;->access$100(Lcom/htc/calendar/AttendeesStatus2;)Lcom/htc/calendar/AttendeesListView;

    move-result-object v2

    iget-object v1, p0, Lcom/htc/calendar/AttendeesStatus2$QueryHandler;->this$0:Lcom/htc/calendar/AttendeesStatus2;

    #getter for: Lcom/htc/calendar/AttendeesStatus2;->mIsOrganizer:Z
    invoke-static {v1}, Lcom/htc/calendar/AttendeesStatus2;->access$000(Lcom/htc/calendar/AttendeesStatus2;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/htc/calendar/AttendeesListView;->setMode(Z)V

    .line 126
    iget-object v1, p0, Lcom/htc/calendar/AttendeesStatus2$QueryHandler;->this$0:Lcom/htc/calendar/AttendeesStatus2;

    #getter for: Lcom/htc/calendar/AttendeesStatus2;->mListView:Lcom/htc/calendar/AttendeesListView;
    invoke-static {v1}, Lcom/htc/calendar/AttendeesStatus2;->access$100(Lcom/htc/calendar/AttendeesStatus2;)Lcom/htc/calendar/AttendeesListView;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/htc/calendar/AttendeesListView;->setCursor(Landroid/database/Cursor;)V

    .line 127
    iget-object v1, p0, Lcom/htc/calendar/AttendeesStatus2$QueryHandler;->this$0:Lcom/htc/calendar/AttendeesStatus2;

    #getter for: Lcom/htc/calendar/AttendeesStatus2;->mListView:Lcom/htc/calendar/AttendeesListView;
    invoke-static {v1}, Lcom/htc/calendar/AttendeesStatus2;->access$100(Lcom/htc/calendar/AttendeesStatus2;)Lcom/htc/calendar/AttendeesListView;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/calendar/AttendeesStatus2$QueryHandler;->this$0:Lcom/htc/calendar/AttendeesStatus2;

    #getter for: Lcom/htc/calendar/AttendeesStatus2;->mAccountType:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/calendar/AttendeesStatus2;->access$200(Lcom/htc/calendar/AttendeesStatus2;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/calendar/AttendeesListView;->setAttendeesAccountType(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

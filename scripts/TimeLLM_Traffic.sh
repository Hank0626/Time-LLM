model_name=TimeLLM
train_epochs=10
learning_rate=0.01
llm_model=GPT2
llama_layers=6

master_port=00097
num_process=12
batch_size=24
d_model=16
d_ff=32

comment='TimeLLM-Traffic'

# accelerate launch  --mixed_precision bf16 --num_processes $num_process --main_process_port $master_port run_main.py \
#   --task_name long_term_forecast \
#   --is_training 1 \
#   --root_path ./dataset/traffic/ \
#   --data_path traffic.csv \
#   --model_id traffic_96_96 \
#   --model $model_name \
#   --data Traffic \
#   --features M \
#   --seq_len 96 \
#   --label_len 48 \
#   --pred_len 96 \
#   --e_layers 2 \
#   --d_layers 1 \
#   --factor 3 \
#   --enc_in 862 \
#   --dec_in 862 \
#   --c_out 862 \
#   --batch_size $batch_size \
#   --learning_rate $learning_rate \
#   --llm_model $llm_model \
#   --llm_layers $llama_layers \
#   --train_epochs $train_epochs \
#   --model_comment $comment

# accelerate launch  --mixed_precision bf16 --num_processes $num_process --main_process_port $master_port run_main.py \
#   --task_name long_term_forecast \
#   --is_training 1 \
#   --root_path ./dataset/traffic/ \
#   --data_path traffic.csv \
#   --model_id traffic_96_96 \
#   --model $model_name \
#   --data Traffic \
#   --features M \
#   --seq_len 96 \
#   --label_len 48 \
#   --pred_len 192 \
#   --e_layers 2 \
#   --d_layers 1 \
#   --factor 3 \
#   --enc_in 862 \
#   --dec_in 862 \
#   --c_out 862 \
#   --batch_size $batch_size \
#   --learning_rate $learning_rate \
#   --llm_model $llm_model \
#   --llm_layers $llama_layers \
#   --train_epochs $train_epochs \
#   --model_comment $comment

  accelerate launch --mixed_precision bf16 --num_processes $num_process --main_process_port $master_port run_main.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/traffic/ \
  --data_path traffic.csv \
  --model_id traffic_96_96 \
  --model $model_name \
  --data Traffic \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 336 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 862 \
  --dec_in 862 \
  --c_out 862 \
  --batch_size $batch_size \
  --learning_rate $learning_rate \
  --llm_model $llm_model \
  --llm_layers $llama_layers \
  --train_epochs $train_epochs \
  --model_comment $comment

  # accelerate launch  --mixed_precision bf16 --num_processes $num_process --main_process_port $master_port run_main.py \
  # --task_name long_term_forecast \
  # --is_training 1 \
  # --root_path ./dataset/traffic/ \
  # --data_path traffic.csv \
  # --model_id traffic_96_96 \
  # --model $model_name \
  # --data Traffic \
  # --features M \
  # --seq_len 96 \
  # --label_len 720 \
  # --pred_len 96 \
  # --e_layers 2 \
  # --d_layers 1 \
  # --factor 3 \
  # --enc_in 862 \
  # --dec_in 862 \
  # --c_out 862 \
  # --batch_size $batch_size \
  # --learning_rate $learning_rate \
  # --llm_model $llm_model \
  # --llm_layers $llama_layers \
  # --train_epochs $train_epochs \
  # --model_comment $comment
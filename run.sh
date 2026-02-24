default_demo:
python process_data.py demo_name=pick_and_place data_root_dir=../data/raw processed_data_root_dir=../data/processed mode=all

epic_demo:
python process_data.py demo_name=epic data_root_dir=../data/raw processed_data_root_dir=../data/processed mode=all --config-name=epic

python process_data.py demo_name=epic demo_num=3 data_root_dir=../data/raw processed_data_root_dir=../data/processed mode=all --config-name=epic

#改成single_arm之后的原demo尝试
python process_data.py demo_name=epic demo_num=1 data_root_dir=../data/raw processed_data_root_dir=../data/processed mode=all --config-name=epic

python process_data.py demo_name=epic demo_num=6 data_root_dir=../data/raw processed_data_root_dir=../data/processed mode=bbox --config-name=epic

# 从30fps降到8fps，时长会变为原来的30/8=3.75倍
ffmpeg -i /users/weijia/danze/phantom/data/our_data_01_200_processed/epic/39/video_annot_bottom_left.mp4 -vf "fps=8,setpts=(10/8)*PTS" /users/weijia/danze/phantom/data/our_data_01_200_processed/epic/39/left_hand.mp4
ffmpeg -i /users/weijia/danze/phantom/data/our_data_01_200_processed/epic/39/video_annot_bottom_right.mp4 -vf "fps=8,setpts=(10/8)*PTS" /users/weijia/danze/phantom/data/our_data_01_200_processed/epic/39/right_hand.mp4
ffmpeg -i /users/weijia/danze/phantom/data/our_data_01_200_processed/epic/39/video_annot_top_left.mp4 -vf "fps=8,setpts=(10/8)*PTS" /users/weijia/danze/phantom/data/our_data_01_200_processed/epic/39/hands_bbox.mp4
ffmpeg -i /users/weijia/danze/phantom/data/our_data_01_200_processed/epic/39/video_annot_top_right.mp4 -vf "fps=8,setpts=(10/8)*PTS" /users/weijia/danze/phantom/data/our_data_01_200_processed/epic/39/hands_mask.mp4


# tar -xvf "P01_03.tar" --one-top-level="$(basename "P01_03.tar" .tar)"
# tar -xvf "P01_04.tar" --one-top-level="$(basename "P01_04.tar" .tar)"
# tar -xvf "P01_05.tar" --one-top-level="$(basename "P01_05.tar" .tar)"
# tar -xvf "P01_06.tar" --one-top-level="$(basename "P01_06.tar" .tar)"
# tar -xvf "P01_07.tar" --one-top-level="$(basename "P01_07.tar" .tar)"
# tar -xvf "P01_08.tar" --one-top-level="$(basename "P01_08.tar" .tar)"
# tar -xvf "P01_09.tar" --one-top-level="$(basename "P01_09.tar" .tar)"
# tar -xvf "P01_10.tar" --one-top-level="$(basename "P01_10.tar" .tar)"
# tar -xvf "P01_11.tar" --one-top-level="$(basename "P01_11.tar" .tar)"
# tar -xvf "P01_12.tar" --one-top-level="$(basename "P01_12.tar" .tar)"
# tar -xvf "P01_13.tar" --one-top-level="$(basename "P01_13.tar" .tar)"
# tar -xvf "P01_14.tar" --one-top-level="$(basename "P01_14.tar" .tar)"
# tar -xvf "P01_15.tar" --one-top-level="$(basename "P01_15.tar" .tar)"
# tar -xvf "P01_16.tar" --one-top-level="$(basename "P01_16.tar" .tar)"
# tar -xvf "P01_17.tar" --one-top-level="$(basename "P01_17.tar" .tar)"
# tar -xvf "P01_18.tar" --one-top-level="$(basename "P01_18.tar" .tar)"
# tar -xvf "P01_19.tar" --one-top-level="$(basename "P01_19.tar" .tar)"

python /users/weijia/danze/phantom/phantom/process_data.py demo_name=epic data_root_dir=/users/weijia/danze/phantom/data/our_data_02_200 processed_data_root_dir=/users/weijia/danze/phantom/data/our_data_02_200_processed mode=robot_inpaint --config-name=epic

conda activate phantom
source ~/miniconda3/bin/activate phantom
cd /storage/weijia/danze/dataset/epic_video


showlab12

python process_data.py demo_name=epic demo_num=18 data_root_dir=../data/our_data_01_200 processed_data_root_dir=../data/processed mode=all --config-name=epic

tmux new -t 3
cd /storage/weijia/danze/dataset/epic_frame/epic-kitchens-download-scripts

python epic_downloader.py --rgb-frames --output-path /storage/weijia/danze/dataset/epic_frame --extension-only --participants P36
python epic_downloader.py --rgb-frames --output-path /storage/weijia/danze/dataset/epic_frame --extension-only --participants P22,P12

python ./danze/gpu_occupy.py --gpus 0,1,2,3,4,5,6,7 --memory 20000

source ./miniconda3/bin/activate 
python process_data.py demo_name=epic demo_num=1 data_root_dir=../data/raw processed_data_root_dir=../data/processed mode=all --config-name=epic

python process_data.py demo_name=epic demo_num=100 data_root_dir=/storage/weijia/danze/dataset/epic_video/extention/our_data_27_101_200 processed_data_root_dir=/storage/weijia/danze/dataset/epic_video_processed/our_data_27_101_200 mode=robot_inpaint --config-name=epic


python process_data.py demo_name=epic demo_num=30 data_root_dir=/storage/weijia/danze/dataset/epic_video/extention/our_data_04_123_200 processed_data_root_dir=/storage/weijia/danze/dataset/epic_video_processed/our_data_04_123_200 mode=action --config-name=epic

python process_data.py demo_name=epic demo_num=247 data_root_dir=/storage/weijia/danze/dataset/epic_video/extention/our_data_35_107_200 processed_data_root_dir=/storage/weijia/danze/dataset/epic_video_processed/our_data_35_107_200 mode=robot_inpaint --config-name=epic


python process_data.py demo_name=pick_and_place data_root_dir=/storage/weijia/danze/dataset/real_arm_replay_exp/raw processed_data_root_dir=/storage/weijia/danze/dataset/real_arm_replay_exp/processed mode=all



python process_data.py demo_name=pick_and_place demo_num=13 data_root_dir=/storage/weijia/danze/dataset/phantom_sim2real/data/raw processed_data_root_dir=/storage/weijia/danze/dataset/phantom_sim2real/data/processed mode=all

ffmpeg -i /storage/weijia/danze/dataset/phantom_sim2real/comparison_results/comparison_3.mp4 -vf "fps=15,scale=480:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" /storage/weijia/danze/dataset/phantom_sim2real/comparison_results/comparison_3.gif


python process_data.py demo_name=pick_and_place demo_num=1 data_root_dir=/storage/weijia/danze/dataset/phantom_sim2real/26_02_22_data/NO1 processed_data_root_dir=/storage/weijia/danze/dataset/phantom_sim2real/26_02_22_data_processed/NO1 mode=robot_inpaint